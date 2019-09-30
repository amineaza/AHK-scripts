#MaxThreadsPerHotkey 2

range = 100 ; range is used in arythmetics without %
sleeptime = 2 ; %sleeptime% 

XButton1 & WheelUp::  ; ---------------------

if (counter > 0)  ; this means the hotkey is already active
{
    counter := counter + range  ; in that case we just add another 100 scrolls to the loop
    return
}
else ; this means the hotkey is not active, we start fresh with 100 scrolls
{   
    counter := range
}   

while, counter > 0
{
    sendinput, {WheelUp}
    sleep %sleeptime%   ; change this to your requirement
    counter--
    ; tooltip, % counter   ; un-comment this line for testing

}

return

XButton1 & WheelDown::  ;  ----------------------

if (counter < 0)  ; this means the hotkey is already active
{
    counter := counter - range  ; in that case we just add another 100 scrolls to the loop
    return
}
else ; this means the hotkey is not active, we start fresh with 100 scrolls
{   
    counter := -range
}   

while, counter < 0
{
    sendinput, {WheelDown}
    sleep %sleeptime%  ; 
    counter++
    ; tooltip, % counter   ; un-comment this line for testing

}

return

; counter resets ------------------------
~WheelDown::counter := 0 ; extra hotkey to stop the loop immediately if needed
~WheelUp::counter := 0 ; extra hotkey to stop the loop immediately if needed
