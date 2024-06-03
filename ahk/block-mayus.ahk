#SingleInstance
#Requires Autohotkey v2.0+

; # -> Win
; ! -> Alt  
; ^ -> Ctrl
; + -> Shift

;-------------------------
;  CapsLock as Ctrl/Esc
;-------------------------

SetCapsLockState("Off")

ih := InputHook("B L1 T1", "{Esc}")

*CapsLock::
{
	ih.Start()
	reason := ih.Wait()
	if (reason = "Stopped") {
		Send "{Esc}"
	} else if (reason = "Max") {
		Send "{Blind}{Ctrl down}" ih.Input
	}
}

*CapsLock up::
{
	if (ih.InProgress) {
		ih.Stop()
	} else {
		Send "{Ctrl up}"
	}
}
