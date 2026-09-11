#Requires AutoHotkey v2.0
#SingleInstance Force

clicking := false
clickDelay := 50

^j::{
    global clicking, clickDelay

    clicking := !clicking

    if clicking {
        SetTimer AutoClick, clickDelay
        ToolTip "AutoClicker: ON"
    } else {
        SetTimer AutoClick, 0
        ToolTip "AutoClicker: OFF"
    }

    SetTimer () => ToolTip(), -1000
}

AutoClick() {
    Click
}

Esc::ExitApp