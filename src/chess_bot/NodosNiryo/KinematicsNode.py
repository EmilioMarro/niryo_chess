#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
kinematics_node.py
Nodo ROS que traduce un movimiento UCI (ej. "e2e4") a movimiento físico
del robot Niryo, usando el board_map.json ya calibrado.

Suscribe:  /best_move  (String, formato UCI: "e2e4")
Publica:   /move_done  (String, "ok" al terminar)

Flujo por movimiento:
    1. Parsear UCI -> casilla origen y destino
    2. hover(src)   -> posicionarse sobre la pieza
    3. open_gripper -> abrir garra antes de bajar
    4. contact(src) -> bajar hasta la pieza
    5. close_gripper -> tomar la pieza
    6. hover(src)   -> subir con la pieza
    7. home()       -> posición neutral segura
    8. hover(dst)   -> posicionarse sobre destino
    9. contact(dst) -> bajar al destino
   10. open_gripper -> soltar la pieza
   11. hover(dst)   -> subir libre
   12. home()       -> volver a posición neutral
   13. Publicar "ok" en /move_done
"""

import rospy       # type: ignore
import actionlib   # type: ignore
import json

from std_msgs.msg import String                                    # type: ignore
from niryo_robot_arm_commander.msg import (                        # type: ignore
    RobotMoveAction, RobotMoveGoal, ArmMoveCommand)
from niryo_robot_msgs.srv import SetBool, SetInt, Trigger          # type: ignore
from tools_interface.srv import ToolCommand                        # type: ignore

# ── Constantes ───────────────────────────────────────────────────────────────

BOARD_MAP_FILE = '/home/niryo/chess_bot/board_map.json'

# Posición home (joints), igual que en board_nav.py
HOME_JOINTS = [
    0.0,
    0.0,
    0.0004986655005698085,
    -0.01504813604700228,
    -1.5432773262027477,
    -1.1606182515086412,
]

# Gripper 3 (id=13) — valores probados en gripper_test.py
GRIPPER_ID        = 13
GRIPPER_OPEN_POS  = 640
GRIPPER_CLOSE_POS = 230
GRIPPER_SPEED     = 300
GRIPPER_HOLD      = 128
GRIPPER_MAX       = 1023

# ── Estado global ─────────────────────────────────────────────────────────────

board     = None   # dict cargado desde board_map.json
move_done_pub = None


# ── Helpers de movimiento ─────────────────────────────────────────────────────

def move_joints(joints):
    """Envía el brazo a una posición articular usando el action server."""
    client = actionlib.SimpleActionClient(
        '/niryo_robot_arm_commander/robot_action', RobotMoveAction)
    client.wait_for_server()
    goal = RobotMoveGoal()
    goal.cmd.cmd_type = ArmMoveCommand.JOINTS
    goal.cmd.joints   = list(map(float, joints))
    client.send_goal(goal)
    client.wait_for_result()
    return client.get_result()


def home():
    rospy.loginfo("[kinematics] -> home")
    move_joints(HOME_JOINTS)
    rospy.sleep(0.3)


def hover(square):
    """Mueve el brazo a la posición elevada sobre una casilla."""
    if square not in board:
        raise ValueError("Casilla '{}' no encontrada en board_map".format(square))
    rospy.loginfo("[kinematics] hover -> {}".format(square.upper()))
    move_joints(board[square]['hover'])
    rospy.sleep(0.3)


def contact(square):
    """Baja el brazo hasta hacer contacto con la casilla."""
    if square not in board:
        raise ValueError("Casilla '{}' no encontrada en board_map".format(square))
    rospy.loginfo("[kinematics] contact -> {}".format(square.upper()))
    move_joints(board[square]['contact'])
    rospy.sleep(0.3)


# ── Control del gripper ───────────────────────────────────────────────────────

def _register_tool():
    """Registra la herramienta activa antes de cada operación del gripper."""
    rospy.wait_for_service('/niryo_robot_tools_commander/update_tool')
    update = rospy.ServiceProxy('/niryo_robot_tools_commander/update_tool', Trigger)
    update()


def open_gripper():
    rospy.loginfo("[kinematics] gripper -> ABRIR")
    _register_tool()
    rospy.wait_for_service('/niryo_robot/tools/open_gripper')
    srv = rospy.ServiceProxy('/niryo_robot/tools/open_gripper', ToolCommand)
    srv(
        id=GRIPPER_ID,
        position=GRIPPER_OPEN_POS,
        speed=GRIPPER_SPEED,
        hold_torque=GRIPPER_HOLD,
        max_torque=GRIPPER_MAX,
    )
    rospy.sleep(0.5)


def close_gripper():
    rospy.loginfo("[kinematics] gripper -> CERRAR")
    _register_tool()
    rospy.wait_for_service('/niryo_robot/tools/close_gripper')
    srv = rospy.ServiceProxy('/niryo_robot/tools/close_gripper', ToolCommand)
    srv(
        id=GRIPPER_ID,
        position=GRIPPER_CLOSE_POS,
        speed=GRIPPER_SPEED,
        hold_torque=GRIPPER_HOLD,
        max_torque=GRIPPER_MAX,
    )
    rospy.sleep(0.5)


# ── Parseo UCI ────────────────────────────────────────────────────────────────

def parse_uci(uci):
    """
    Convierte un string UCI a casilla origen y destino.

    Input:  "e2e4"
    Output: ("e2", "e4")

    Lanza ValueError si el formato no es válido.
    """
    uci = uci.strip().lower()
    if len(uci) < 4:
        raise ValueError("Movimiento UCI inválido: '{}'".format(uci))

    src = uci[0:2]   # ej. "e2"
    dst = uci[2:4]   # ej. "e4"

    cols = set('abcdefgh')
    rows = set('12345678')

    if src[0] not in cols or src[1] not in rows:
        raise ValueError("Casilla origen inválida: '{}'".format(src))
    if dst[0] not in cols or dst[1] not in rows:
        raise ValueError("Casilla destino inválida: '{}'".format(dst))

    return src, dst


# ── Rutina principal de movimiento ────────────────────────────────────────────

def execute_move(src, dst):
    """
    Ejecuta la secuencia completa para mover una pieza de src a dst.

    Secuencia:
        open_gripper (seguridad) → hover(src) → contact(src) → close_gripper
        → hover(src) → home → hover(dst) → contact(dst) → open_gripper
        → hover(dst) → home
    """
    rospy.loginfo("[kinematics] Ejecutando movimiento: {} -> {}".format(
        src.upper(), dst.upper()))

    # — Tomar pieza —
    open_gripper()          # abre antes de bajar (evita golpear piezas)
    hover(src)
    contact(src)
    close_gripper()         # agarra la pieza
    hover(src)              # sube con la pieza
    home()                  # posición neutral segura antes de cruzar el tablero

    # — Colocar pieza —
    hover(dst)
    contact(dst)
    open_gripper()          # suelta la pieza
    hover(dst)              # sube sin pieza
    home()                  # vuelve a neutral

    rospy.loginfo("[kinematics] Movimiento completado: {} -> {}".format(
        src.upper(), dst.upper()))


# ── Callback del topic /best_move ─────────────────────────────────────────────

def on_best_move(msg):
    """
    Recibe el movimiento UCI desde Stockfish y ejecuta la rutina física.
    Al finalizar publica "ok" en /move_done.
    """
    uci = msg.data.strip()
    rospy.loginfo("[kinematics] Recibido best_move: '{}'".format(uci))

    try:
        src, dst = parse_uci(uci)
    except ValueError as e:
        rospy.logerr("[kinematics] {}".format(e))
        return

    # Verificar que ambas casillas están en el mapa
    if src not in board:
        rospy.logerr("[kinematics] Casilla origen '{}' no está en board_map".format(src))
        return
    if dst not in board:
        rospy.logerr("[kinematics] Casilla destino '{}' no está en board_map".format(dst))
        return

    try:
        execute_move(src, dst)
        move_done_pub.publish("ok")
        rospy.loginfo("[kinematics] /move_done publicado: ok")
    except Exception as e:
        rospy.logerr("[kinematics] Error durante ejecución: {}".format(e))


# ── Inicialización ────────────────────────────────────────────────────────────

def load_board_map():
    global board
    with open(BOARD_MAP_FILE, 'r') as f:
        board = json.load(f)
    rospy.loginfo("[kinematics] board_map cargado — {} casillas".format(len(board)))


def main():
    global move_done_pub

    rospy.init_node('kinematics_node')

    load_board_map()

    move_done_pub = rospy.Publisher('/move_done', String, queue_size=1)

    rospy.Subscriber('/best_move', String, on_best_move)

    rospy.loginfo("[kinematics] Nodo listo. Esperando /best_move ...")
    rospy.spin()


if __name__ == '__main__':
    main()
