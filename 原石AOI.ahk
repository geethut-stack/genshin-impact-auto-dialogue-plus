#Persistent
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

; -----------------------
; Main Logic
; -----------------------
toggleClick := false
toggleF := false

F1::
toggleClick := !toggleClick
SetTimer, DoClick, % toggleClick ? 0 : "Off"
return

DoClick:
Click, 1200, 700
return

F2::
toggleF := !toggleF
SetTimer, DoF, % toggleF ? 0 : "Off"
return

DoF:
Send, f
return

F3:: ; Run sequence
Send, {E down}
Sleep, 40

Send, {Alt down}
Sleep, 350

MouseMove, 1078, 27, 0
Send, {RButton down}
Sleep, 2000

MouseMove, 1078, 127, 0
Send, {RButton up}



Send, {E up}
Send, {Alt up}
return







End::ExitApp