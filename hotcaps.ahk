#SingleInstance, Force
SetCapsLockState, AlwaysOff

; RIGHT HAND
CapsLock & i::Up
CapsLock & k::Down
CapsLock & j::Home
CapsLock & l::End 

;VOLUME CONTROLS DOWN
CapsLock & 1::
SoundGet, masterVolume
SoundGet, masterMute, , mute

if (masterVolume < 2 and masterMute = "Off")
{
    SoundSet, -1
    SoundSet, -1, , mute
}
else
{
    SoundSet, -1
}
return

;VOLUME CONTROLS UP
CapsLock & 2::
SoundGet, masterMute, , mute

if masterMute = On
{
    SoundSet, 0, , mute
    SoundSet, +1
} 
else 
{
    SoundSet, +1
}
return














