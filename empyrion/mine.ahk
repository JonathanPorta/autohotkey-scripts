; start mining in a circle
Numpad0 & Numpad1::
  $stop := 0
  Loop , {
    Send {Click down}
    Send {Left down}
    Sleep 30
    if ($stop) {
      break
    }
  }
  Send {Left up}
  Send {Click up}
Return

; start mining in other circle
Numpad0 & Numpad2::
  $stop := 0
  $delay := 200

  Loop , {
    Send {Click down}
    Send {Left down}
    Sleep $delay
    Send {Left up}
    Send {Down down}
    Sleep $delay
    Send {Down up}
    Send {Right down}
    Sleep $delay
    Send {Right up}
    Send {Up down}
    Sleep $delay
    Send {Up up}
    Sleep $delay
    if ($stop) {
      break
    }
  }

  ; arrow keys up
  Send {Left up}
  Send {Down up}
  Send {Right up}
  Send {Up up}

  ; Mouse  up
  Send {Click up}
Return

; start mining in a half-circle
Numpad0 & Numpad3::
  $stop := 0
  $sweep_time := 1000
  Loop , {
    Send {Click down}
    Send {Left down}
    Sleep $sweep_time
    Send {Left up}
    Send {Right down}
    Sleep $sweep_time
    Send {Right up}
    if ($stop) {
      break
    }
  }
  ; Clear any arrow key pressing
  Send {Left up}
  Send {Right up}
  ; Clear any down pressage on lmb
  Send {Click up}
Return

; stop mining in a circle
Numpad0 & NumpadDot:: $stop := 1
