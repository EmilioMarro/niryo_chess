# -*- coding: utf-8 -*-

# Board mapping script -- 4 corner bilinear interpolation
#
# Uses all 4 corners of the board 
# Each square's pose is calculated proportionally between the 4 corners.
#
# How to use:
#   1. In Niryo Studio, save poses named A1, H1, A8, H8
#   2. Extract each with:
#      rosservice call /niryo_robot_poses_handlers/get_pose "name: 'A1'"
#   3. Paste all values below with full precision
#   4. Run: python board_map.py
#   5. Verify corners match, then check a few middle squares physically

import json

A1 = {
    'x':     0.122695782147,
    'y':     0.139416927273,
    'z':     0.0925522171713,
    'roll':  1.58720060887,
    'pitch': 1.50985915998,
    'yaw':   0.827075071538
}

H1 = {
    'x':     0.119126944648,
    'y':     -0.129922233948,
    'z':     0.0923430583134,
    'roll':  -0.0275889556132,
    'pitch': 1.54254964779,
    'yaw':   -0.877064703258
}

A8 = {
    'x':     0.400963775134,
    'y':     0.140258350469,
    'z':     0.103762490841,
    'roll':  1.86244454105,
    'pitch': 1.42386801867,
    'yaw':   1.06894717781
}

H8 = {
    'x':      0.399353416498,
    'y':     -0.142327622242,
    'z':      0.0987027788073,
    'roll':   1.33111072624,
    'pitch':  1.50916491449,
    'yaw':    0.533593002045
}

# Z offsets relative to board surface
Z_HOVER_OFFSET = 0.08   # 8cm above board
Z_GRIP_OFFSET  = 0.01   # 1cm below board surface


def square_to_pose(col, row):
    # Bilinear interpolation using all 4 corners.
    #
    # How it works:
    #   t = horizontal percentage (0.0 = col A, 1.0 = col H)
    #   u = vertical percentage   (0.0 = row 1, 1.0 = row 8)
    #
    #   Each value is weighted average of all 4 corners:
    #   value = A1*(1-t)*(1-u) + H1*t*(1-u) + A8*(1-t)*u + H8*t*u
    #
    # This correctly handles boards that are not perfectly flat
    # or not perfectly aligned with the robot.

    t = col / 7.0
    u = row / 7.0

    def interp(key):
        return (A1[key] * (1-t) * (1-u) +
                H1[key] * t     * (1-u) +
                A8[key] * (1-t) * u     +
                H8[key] * t     * u)

    return {
        'x':     interp('x'),
        'y':     interp('y'),
        'z':     interp('z'),
        'roll':  interp('roll'),
        'pitch': interp('pitch'),
        'yaw':   interp('yaw')
    }


def notation_to_colrow(square):
    # Converts chess notation to col/row indices
    # "e4" -> col=4, row=3
    col = ord(square[0].lower()) - ord('a')
    row = int(square[1]) - 1
    return col, row
 
def get_square(square):
    # Main function -- give it a square name, get back full pose
    # "e4" -> {x, y, z, roll, pitch, yaw}
    col, row = notation_to_colrow(square)
    return square_to_pose(col, row)


def get_hover_pose(square):
    # Returns pose at hover height above a square
    pose = get_square(square).copy()
    pose['z'] += Z_HOVER_OFFSET
    return pose


def get_grip_pose(square):
    # Returns pose at grip height for a square
    pose = get_square(square).copy()
    pose['z'] -= Z_GRIP_OFFSET
    return pose


def verify_corners():
    # Corners should match exactly what you pasted above
    print("Corner verification -- should match your input exactly:")
    for sq in ['a1', 'h1', 'a8', 'h8']:
        p = get_square(sq)
        print("  {}: x={:.15f} y={:.15f} z={:.15f}".format(
            sq, p['x'], p['y'], p['z']))


def print_board():
    cols = 'abcdefgh'
    print("\nFull board:")
    print("{:<4} {:>18} {:>18} {:>18} {:>14} {:>14} {:>14}".format(
        "sq", "x", "y", "z", "roll", "pitch", "yaw"))
    print("-" * 100)
    for row in range(8):
        for col in range(8):
            square = cols[col] + str(row + 1)
            p = square_to_pose(col, row)
            print("{:<4} {:>18.15f} {:>18.15f} {:>18.15f} {:>14.10f} {:>14.10f} {:>14.10f}".format(
                square,
                p['x'], p['y'], p['z'],
                p['roll'], p['pitch'], p['yaw']))


def save_board(filename='board_map.json'):
    cols = 'abcdefgh'
    board = {}
    for row in range(8):
        for col in range(8):
            square = cols[col] + str(row + 1)
            board[square] = square_to_pose(col, row)
    with open(filename, 'w') as f:
        json.dump(board, f, indent=2)
    print("\nSaved to " + filename)


if __name__ == '__main__':
    verify_corners()

    print("\nSome middle squares:")
    for sq in ['e4', 'd4', 'e5', 'd5']:
        p = get_square(sq)
        print("  {}: x={:.15f} y={:.15f} z={:.15f}".format(
            sq, p['x'], p['y'], p['z']))

    print_board()
    save_board()