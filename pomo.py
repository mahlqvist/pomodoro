#!/usr/bin/env python3
import os
import sys
import ctypes
import time

def pomodoro():
    print("Lets build som focus!\n")
    num_min = input("Number of minutes to practice: ")

    while True:
        if num_min.isdigit():
            num_sec = int(num_min) * 60
            break
        num_min = input("Please enter a number: ")

    title = "Pomodoro"
    msg = "Time for a 5 min break!"
    time.sleep(num_sec)

    if os.name == 'nt' or sys.platform == 'win32':
        message_box = ctypes.windll.user32.MessageBoxW
        message_box(None, msg, title, 0x00001000)
    else:
        os.system(f"notify-send {title} {msg}")

pomodoro()
sys.exit()
