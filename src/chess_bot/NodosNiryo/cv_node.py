#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
cv_node.py
Nodo ROS de deteccion ArUco para Ubuntu 16.04 / OpenCV 3.x (API legacy).
Publica detecciones en /board_detection como JSON.
"""
import rospy #type:ignore
import cv2 #type: ignore
import numpy as np #type: ignore
import json
from std_msgs.msg import String #type: ignore


CAMERA_INDEX = 0      # indice de camara USB
IMG_W        = 1280
IMG_H        = 720
PUBLISH_HZ   = 10     # frames procesados por segundo

# DICT_4X4_50: marcadores 4x4 bits, IDs del 0 al 49
# Cambiar si tus marcadores son de otro tipo
ARUCO_DICT   = cv2.aruco.Dictionary_get(cv2.aruco.DICT_4X4_50)
ARUCO_PARAMS = cv2.aruco.DetectorParameters_create()


"""
Detecta marcadores ArUco en un frame BGR.
Usa API legacy de OpenCV 3.x (compatible con Ubuntu 16.04).

Retorna:
corners: lista de arrays (1, 4, 2) — esquinas de cada marcador
ids:     array (N, 1) con ID de cada marcador, o None si no hay
"""
def detectar_aruco(frame):

    corners, ids, _ = cv2.aruco.detectMarkers(
        frame, ARUCO_DICT, parameters=ARUCO_PARAMS)
    return corners, ids


"""
    Construye el JSON de detecciones que consume el nodo FEN.

    Formato de salida:
    {
      "detections": [
        {"aruco_id": 1, "cx": 320, "cy": 461},
        ...
      ]
    }

    cx, cy es el centro del marcador en pixeles,
    calculado como promedio de sus 4 esquinas.
"""

def construir_json(corners, ids):
    detecciones = []
    if ids is not None:
        for i in range(len(ids)):
            marker_id = int(ids[i][0])
            pts       = corners[i][0]           # shape (4, 2)
            cx        = int(np.mean(pts[:, 0]))  # promedio de X
            cy        = int(np.mean(pts[:, 1]))  # promedio de Y

            detecciones.append({
                "aruco_id": marker_id,
                "cx":       cx,
                "cy":       cy
            })
    return json.dumps({"detections": detecciones})



def main():
    rospy.init_node("cv_node", anonymous=False)
    pub = rospy.Publisher("/board_detection", String, queue_size=1)

    # Abrir camara
    cap = cv2.VideoCapture(CAMERA_INDEX)
    cap.set(cv2.CAP_PROP_FRAME_WIDTH,  IMG_W)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, IMG_H)
    cap.set(cv2.CAP_PROP_FPS, 30)

    if not cap.isOpened():
        rospy.logerr("No se pudo abrir camara index={}".format(CAMERA_INDEX))
        return

    rospy.loginfo("cv_node listo, publicando en /board_detection")
    rate = rospy.Rate(PUBLISH_HZ)

    while not rospy.is_shutdown():
        ret, frame = cap.read()
        if not ret:
            rospy.logwarn("No se pudo leer frame — reintentando")
            rate.sleep()
            continue

        corners, ids = detectar_aruco(frame)
        json_str     = construir_json(corners, ids)
        pub.publish(json_str)

        # Log solo cuando hay detecciones, max 1 vez por segundo
        if ids is not None:
            rospy.loginfo_throttle(1.0,
                "Detectados {} ArUco(s): {}".format(len(ids), json_str))
        rate.sleep()

    cap.release()
    rospy.loginfo("cv_node detenido")


if __name__ == "__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass