SetWorkingDir, C:\Users\dzamie\Documents\AHK\res

;::::::::::::::::::::::::::::::::;
;::      Auto Coli Scratch     ::;
;::         version 1.1        ::;
;::::::::::::::::::::::::::::::::;

CoordMode, Mouse, Screen

;:::::::::::User-defined::::::::::;
;:: Min is upper-left of coli	::;
;:: area ("corner" of turn box)	::;
;:: Max is lower-right of		::;
;:: coli area ("corner" of Flee ::;
;:: button.						::;
;:::::::::::::::::::::::::::::::::;
MinX := 666
MinY := 451
MaxX := 1457
MaxY := 1042
;:::::::::End User-defined::::::::;

fightonLoc = fighton.bmp
abilLoc = abil.bmp

length := MaxX - MinX
height := MaxY - MinY

AbilX := MinX + (0.657*length)
AbilY := MinY + (0.884*height)

FightOnX := MinX + (0.811*length)
FightOnY := MinY + (0.801*height)

EnerX := MinX + (0.786*length)
EnerY := MinY + (0.826*height)

AtkX := MinX + (0.738*length)
AtkY := MinY + (0.949*height)

EneHX := MinX + (0.671*length)
EneHY := MinY + (0.208*height)
EneMX := MinX + (0.739*length)
EneMY := MinY + (0.330*height)
EneLX := MinX + (0.873*length)
EneLY := MinY + (0.450*height)
EneFX := MinX + (0.600*length)
EneFY := MinY + (0.341*height)
EneGX := MinX + (0.761*length)
EneGY := MinY + (0.270*height)
EneVX := MinX + (0.699*length)
EneVY := MinY + (0.477*height)
EneBX := MinX + (0.871*length)
EneBY := MinY + (0.516*height)

;::::::::::Begin Timing:::::::::::;
Loop
{
  delay := 120
  
  Click, %AbilX%, %AbilY%
  Sleep, %delay%
  Click, %AtkX%, %AtkY%
  Sleep, %delay%
  Click, %EnerX% %EnerY%
  Sleep, %delay%
  Click, %EneHX%, %EneHY%
  Sleep, %delay%
  Click, %EneMX%, %EneMY%
  Sleep, %delay%
  Click, %EneLX%, %EneLY%
  Sleep, %delay%
  Click, %EneGX%, %EneGY%
  Sleep, %delay%
  Click, %EneBX%, %EneBY%
  Sleep, %delay%
  Click, %EneVX%, %EneVY%
  
  counter := 0
  
  Loop
  {
    if counter = 10
	  break
	counter := counter + 1
    ImageSearch, toss1, toss2, MinX, MinY, MaxX, MaxY, *50 %abilLoc% ; 651, 811, 733, 922,
    ; MsgBox, ErrorLevel: %ErrorLevel%
	if ErrorLevel = 0
	  break
	ImageSearch, toss1, toss2, MinX, MinY, MaxX, MaxY, *70 %fightonLoc% ; 622, 697, 978, 996,
    ; MsgBox, ErrorLevel: %ErrorLevel%
    if ErrorLevel = 0
    {
      Sleep, 500
      Click, %FightOnX%, %FightOnY%
	  Sleep, 3000
    }
	Sleep, 200
  }
  

}

^Esc::ExitApp

ScrollLock::
  Suspend
  Pause, Toggle, 1
Return