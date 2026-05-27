#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy        #type:ignore
import json         
from std_msgs.msg import String  # type: ignore

#cargar mapa pixeles
PIXEL_MAP_FILE = '/home/niryo/chess_bot/board_pixel_map.json'
pixel_map = None

#pubs
fen_pub = None
board_pub = None

#turno
turn = 'w'

def load_pixel_map():
    global pixel_map #global, utilizada en otras funciones
    with open(PIXEL_MAP_FILE) as f:
        pixel_map = json.load(f)
    rospy.loginfo ("Pixel map loaded - {} squares".format(len(pixel_map)))

#traducción pixeles a casilla (bbox = bounding box)
"""
pixel_map es un diccionario donde cada key es una casilla del tablero (ej. "a1") y cada value contiene otro diccionario con la información de esa casilla. 
Dentro de ese value, bbox también es un diccionario que guarda los límites en píxeles (x_min, x_max, y_min, y_max) de la casilla.
.items() recorre el diccionario devolviendo pares (key, value), y la coma en for square, data desempaqueta automáticamente esos pares, guardando la key en square y el value en data.
La función verifica si el punto (cx, cy) cae dentro del rango de píxeles (bbox) de alguna casilla y retorna el nombre de esa casilla si coincide; si no, retorna None.

Input:
    cx = 532
    cy = 417

    pixel_map = {
        "e4": {
            "bbox": {
                "x_min": 500,
                "x_max": 560,
                "y_min": 390,
                "y_max": 450
            }
        }
    }

Output:
    "e4"
"""
def pixel_to_square (cx, cy):
    for square, data in pixel_map.items(): 
        b = data['bbox']
        if (b['x_min'] <= cx <= b['x_max'] and
            b['y_min'] <= cy <= b['y_max']):
            return square 
    return None

#traducción aruco_id a FEN (blanco mayus, negro minus)
ARUCO_TO_PIECE = {
    0:'K',   # Rey 
    1:'Q',   # Reina 
    2:'R',   #Torre
    3:'R',
    4:'B',   #Alfil
    5:'B',
    6:'N',   #Caballo
    7:'N',
    8:'P',   #Peon
    9:'P',
    10:'P',
    11:'P',
    12:'P',
    13:'P',
    14:'P',
    15:'P',
    16:'k',  
    17:'q',
    18:'r',
    19:'r',
    20:'b',
    21:'b',
    22:'n',
    23:'n',
    24:'p',
    25:'p',
    26:'p',
    27:'p',
    28:'p',
    29:'p',
    30:'p',
    31:'p',
}

#Construcción de dict a partir de detecciones
"""
Convierte las detecciones crudas de ArUcos (aruco_id, cx, cy) en una representación lógica del tablero.
Para cada detección, obtiene qué pieza corresponde al ID usando ARUCO_TO_PIECE, convierte las coordenadas de píxeles (cx, cy) a una casilla usando pixel_to_square(),
verifica errores (IDs desconocidos, piezas fuera del tablero o dos piezas en la misma casilla) y construye el diccionario board con formato {casilla: pieza}.
Esta función se ejecuta cada vez que llega un nuevo mensaje con detecciones desde /board_detections.

Input:  lista de {"aruco_id": 1, "cx": 320, "cy": 461}
Output: dict {"e1": "K", "e4": "P", ...}
"""
def detections_to_board(detections):
    board = {} #diccionario vacio

    for det in detections:
        aruco_id = det['aruco_id']
        cx = det['cx']
        cy = det ['cy']

        piece = ARUCO_TO_PIECE.get(aruco_id) #.get busca un key en un diccionario
        if piece is None:
            rospy.logwarn("ID ArUco desconocido: {}".format(aruco_id))
            continue

        square = pixel_to_square(cx, cy)
        if square is None:
            rospy.logwarn(("ArUco {} en ({},{}) fuera del tablero".format(aruco_id, cx, cy)))
            continue

        if square in board:
            rospy.logwarn("Dos piezas en {}: {} y {}".format(square, board[square], piece))
            continue
        
        board[square] = piece
    return board

#Construcción de FEN a partir de dict
"""
Convierte el diccionario board ({casilla: pieza}) a una cadena FEN.
La función recorre el tablero desde la fila 8 hasta la 1 y desde la
columna 'a' hasta la 'h'. Si encuentra una pieza, agrega su símbolo
al FEN; si encuentra casillas vacías, las cuenta y las reemplaza por
un número según la especificación FEN.

Las filas se unen con '/' para formar la posición completa del tablero.
Luego se agregan los demás campos FEN:
- turn: jugador que mueve ('w' o 'b')
- '-': sin enroques disponibles
- '-': sin captura en passant
- '0 1': contadores de movimiento

Input:
    dict {"e1":"K", "e4":"P", ...}

Output:
    "4k3/8/8/8/4P3/8/8/4K3 w - - 0 1"

"""
def board_to_fen(board, turn='w'):
    fen_rows = []
    for row in range(8, 0, -1):
        fen_row = ''
        empty   = 0
        for col in 'abcdefgh':
            piece = board.get(col + str(row))
            if piece:
                if empty > 0:
                    fen_row += str(empty)
                    empty = 0
                fen_row += piece
            else:
                empty += 1
        if empty > 0:
            fen_row += str(empty)
        fen_rows.append(fen_row)
    return '{} {} - - 0 1'.format('/'.join(fen_rows), turn)

#recibir detecciones y publicar resultados
"""
Callback ejecutado automáticamente cada vez que llega un mensaje al
topic /board_detections.

La función recibe un mensaje ROS tipo String que contiene un JSON con
las detecciones de ArUcos realizadas por el sistema de visión. Primero
convierte el string JSON a un diccionario Python usando json.loads().

Luego:
- extrae la lista de detecciones
- convierte las detecciones a un estado lógico del tablero usando
  detections_to_board()
- genera la cadena FEN usando board_to_fen()

Finalmente publica:
- el FEN en el topic /fen
- el estado lógico del tablero en /board_state

También imprime el FEN generado usando rospy.loginfo() para facilitar
debug y monitoreo del nodo.

Input:
    ROS String msg.data:
    '{"detections":[{"aruco_id":0,"cx":320,"cy":440}]}'

Output:
    /fen:
    "4k3/8/8/8/8/8/8/4K3 w - - 0 1"

    /board_state:
    '{"e1":"K","e8":"k"}'
"""
def on_detections(msg):
    try:
        data = json.loads(msg.data)
    except Exception as e:
        rospy.logerr("Error al parsear detecciónes: {}".format(e))
        return
    
    detections = data.get('detections', [])
    board = detections_to_board(detections)
    fen = board_to_fen(board, turn)

    fen_pub.publish(fen)
    board_pub.publish(json.dumps(board))

    rospy.loginfo("FEN: {}".format(fen))


"""
Inicializa el nodo ROS usando rospy.init_node(), carga el mapa de
píxeles del tablero desde board_pixel_map.json y crea los publishers
utilizados para enviar:
- la cadena FEN al topic /fen
- el estado lógico del tablero al topic /board_state

Luego crea un subscriber al topic /board_detections, de modo que ROS
ejecute automáticamente on_detections() cada vez que lleguen nuevas
detecciones desde el sistema de visión.

Finalmente rospy.spin() mantiene el nodo activo y procesando callbacks
mientras ROS esté ejecutándose.

Input:
    Mensajes ROS recibidos desde /board_detections

Output:
    Publicaciones continuas en:
    - /fen
    - /board_state
"""
def main():
    global fen_pub, board_pub
    rospy.init_node('fen_node')
    load_pixel_map()

    fen_pub = rospy.Publisher ('/fen', String, queue_size=1)
    board_pub = rospy.Publisher('/board_state', String, queue_size=1)

    rospy.Subscriber('/board_detection', String, on_detections)

    rospy.loginfo("Nodo FEN listo")
    
    rospy.spin()

if __name__ == '__main__':
    main()







