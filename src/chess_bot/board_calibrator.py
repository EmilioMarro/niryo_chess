#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
board_calibrator.py

Click las 4 esquinas del tablero en orden:
  1. a1 (abajo izquierda)
  2. h1 (abajo derecha)  
  3. h8 (arriba derecha)
  4. a8 (arriba izquierda)

Genera board_pixel_map.json con el centro y bounding box de cada casilla.
"""

import cv2 #type:ignore
import json
import numpy as np #type:ignore

IMAGE_SOURCE = 0             # camara, o ruta a imagen: 'tablero.jpg'
OUTPUT       = '/home/niryo/chess_bot/board_pixel_map.json'

clicks = []

def on_click(event, x, y, flags, param):
    if event == cv2.EVENT_LBUTTONDOWN:
        clicks.append((x, y))
        print("Click {}: ({}, {})".format(len(clicks), x, y))

def order_corners(pts):
    """
    Ordena 4 puntos como: a1, h1, h8, a8
    (abajo-izq, abajo-der, arriba-der, arriba-izq)
    """
    pts = np.array(pts, dtype='float32')
    s   = pts.sum(axis=1)
    d   = np.diff(pts, axis=1)
    return np.array([
        pts[np.argmax(s)],   # abajo derecha  → h1... wait
        pts[np.argmin(d)],
        pts[np.argmin(s)],
        pts[np.argmax(d)],
    ])

def generate_board_map(corners_px):
    """
    corners_px: [a1, h1, h8, a8] en píxeles
    Genera centro y bbox de cada casilla via perspectiva.
    """
    # Puntos destino: tablero normalizado 800x800
    size = 800
    dst  = np.array([
        [0,    size],   # a1
        [size, size],   # h1
        [size, 0   ],   # h8
        [0,    0   ],   # a8
    ], dtype='float32')

    src = np.array(corners_px, dtype='float32')
    M   = cv2.getPerspectiveTransform(dst, src)  # normalizado → imagen real

    board_map = {}
    cols = 'abcdefgh'
    cell = size / 8.0

    for row in range(8):
        for col in range(8):
            square = cols[col] + str(row + 1)

            # Centro de la casilla en espacio normalizado
            cx_norm = col * cell + cell / 2
            cy_norm = (7 - row) * cell + cell / 2  # fila 8 arriba

            # Esquinas de la casilla en espacio normalizado
            tl = [col * cell,        (7 - row) * cell       ]
            tr = [(col + 1) * cell,  (7 - row) * cell       ]
            br = [(col + 1) * cell,  (7 - row + 1) * cell   ]
            bl = [col * cell,        (7 - row + 1) * cell   ]

            # Transforma a píxeles reales via perspectiva
            def to_px(pt):
                p  = np.array([[[pt[0], pt[1]]]], dtype='float32')
                tp = cv2.perspectiveTransform(p, M)
                return [float(tp[0][0][0]), float(tp[0][0][1])]

            cx_px, cy_px = to_px([cx_norm, cy_norm])
            tl_px        = to_px(tl)
            br_px        = to_px(br)

            board_map[square] = {
                'center': [round(cx_px, 1), round(cy_px, 1)],
                'bbox':   {
                    'x_min': round(min(tl_px[0], br_px[0]), 1),
                    'x_max': round(max(tl_px[0], br_px[0]), 1),
                    'y_min': round(min(tl_px[1], br_px[1]), 1),
                    'y_max': round(max(tl_px[1], br_px[1]), 1),
                }
            }

    return board_map

def main():
    cap = cv2.VideoCapture(IMAGE_SOURCE)
    ret, frame = cap.read()
    cap.release()

    if not ret:
        print("ERROR: could not read from camera")
        return

    print("Click las 4 esquinas en orden: a1, h1, h8, a8")
    print("a1 = abajo izquierda (desde tu perspectiva)")
    print("h1 = abajo derecha")
    print("h8 = arriba derecha")
    print("a8 = arriba izquierda")

    cv2.namedWindow('Calibration')
    cv2.setMouseCallback('Calibration', on_click)

    while True:
        display = frame.copy()

        for i, (x, y) in enumerate(clicks):
            cv2.circle(display, (x, y), 6, (0, 255, 0), -1)
            labels = ['a1', 'h1', 'h8', 'a8']
            cv2.putText(display, labels[i], (x + 8, y - 8),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0, 255, 0), 2)

        if len(clicks) == 4:
            pts = np.array(clicks, dtype='int32')
            cv2.polylines(display, [pts], True, (0, 255, 0), 2)
            cv2.putText(display, "Press ENTER to confirm, R to reset",
                        (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 200, 255), 2)

        cv2.imshow('Calibration', display)
        key = cv2.waitKey(1) & 0xFF

        if key == ord('r'):
            del clicks[:]
            print("Reset — click again")

        if key == 13 and len(clicks) == 4:  # Enter
            break

        if key == ord('q'):
            cv2.destroyAllWindows()
            return

    cv2.destroyAllWindows()

    board_map = generate_board_map(clicks)

    # Preview — dibuja grid sobre la imagen
    preview = frame.copy()
    for sq, data in board_map.items():
        cx, cy = int(data['center'][0]), int(data['center'][1])
        b      = data['bbox']
        cv2.rectangle(preview,
                      (int(b['x_min']), int(b['y_min'])),
                      (int(b['x_max']), int(b['y_max'])),
                      (0, 200, 255), 1)
        cv2.putText(preview, sq, (cx - 10, cy + 5),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.3, (255, 255, 255), 1)

    cv2.imshow('Preview — press any key to save', preview)
    cv2.waitKey(0)
    cv2.destroyAllWindows()

    with open(OUTPUT, 'w') as f:
        json.dump(board_map, f, indent=2)

    print("Saved {} squares to {}".format(len(board_map), OUTPUT))
    print("\nSample a1: {}".format(board_map['a1']))
    print("Sample e4: {}".format(board_map['e4']))

if __name__ == '__main__':
    main()