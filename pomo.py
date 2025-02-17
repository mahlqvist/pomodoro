#!/usr/bin/env python3
import os
import sys
import ctypes
import time

def pomodoro():
    print("Lets build some focus!\n")
    num_min = input("Number of minutes to practice: ")

    while True:
        if num_min.isdigit():
            num_sec = int(num_min) * 60
            break
        num_min = input("Please enter a number: ")

    title = "Pomodoro"
    msg = "Time for a well-deserved break!"
    time.sleep(num_sec)

    if os.name == 'posix':
        os.system(f"notify-send {title} '{msg}'")
    elif os.name == 'nt' or sys.platform == 'win32':
        message_box = ctypes.windll.user32.MessageBoxW
        message_box(None, msg, title, 0x00001000)

def practice():  
    while True:
        ans = input("\nWould you like to practice, press Y or N: ")
        if ans.lower()[0] == "y":
            pomodoro()
        else:
            print("Goodbye")
            break

practice()
sys.exit()
