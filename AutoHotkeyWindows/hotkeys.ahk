+^l::^#Right
+^h::^#Left

F8::
{
    activeWin := WinActive("A")  ; Get the active window before switching desktops

    Send "^#{Right}"  ; Send Win+Ctrl+Right to switch to the next desktop
    Sleep 100

    newActiveWin := WinActive("A")  ; Get the active window after switching

    if (activeWin = newActiveWin)  ; If the window didn't change, it means there are no more desktops
    {
        Loop 10  ; Try to return to the first desktop in case there are multiple
        {
            Send "^#{Left}"  ; Send Win+Ctrl+Left to go back
            Sleep 100
        }
    }
}
return
