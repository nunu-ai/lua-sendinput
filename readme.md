## SendInput

## Nunu Installation
- Get the winapi.dll (you get this by compiling winapi from our repo) and then put it in this repo

To test:
- Open Notepad and save it as mygame.txt
- execute: lua _test_sendinput.lua


## Original Installation

Send mouse and keyboard events with lua in Windows.

Requires a modified version of Steve Donovan's winapi module:

* https://github.com/stevedonovan/winapi/tree/master/examples
* http://stevedonovan.github.io/winapi/api.html

I added 2 functions:

* send_mouse_input
* send_keyboard_input

The required modifications are in **winapi-module-patch.c**

All times are in milliseconds.

* See: SKeys.lua/Keys.lua module for key scan codes
* See: **SendInputScheduled.lua** for sleep-free event scheduling (async)
* See: \_test\_* files for sample test code