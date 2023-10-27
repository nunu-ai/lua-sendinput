-- test ------------------------------------------------------------------------

local _run_test = true
local _console_mode = SetTimerCallback==nil
require 'winapi'
if _run_test and _console_mode then    
    function GetScreenX() return 1280 end
    function GetScreenY() return 1024 end
    require 'SKeys' 
    require 'Keys'
    local M = require 'SendInput'
    print('testing...')
    local w = winapi.find_window_match('mygame.txt')
    w:show()
    w:set_foreground()
    
    M.key_down(Keys.ShiftKey)
    M.key_press(Keys.H, 200)
    M.key_up(Keys.ShiftKey)
    M.key_press(Keys.E, 200)
    M.key_press(Keys.L, 200)
    M.key_press(Keys.L, 200)
    M.key_press(Keys.O, 200)
    
    --key_up(SKeys.H)
    --key_press(SKeys.E)
    -- M.mouse_move(0, 0)
    -- -- todo: actual mouse_move_relative movement changes based on mouse accel settings
    -- for i=0,10 do
    --     winapi.sleep(10)        
    --     M.mouse_move_relative(10,10)
    --     M.mouse_press('right', 200)
    -- end
    -- -- todo: better mouse testing
    -- winapi.sleep(200)
    -- M.mouse_move(0, 0)
    -- winapi.sleep(200)
    -- M.mouse_move(100, 100)
    -- M.mouse_press('right', 600)
    -- --mouse_up()
    -- --mouse_press()
end