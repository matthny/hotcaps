#SingleInstance, Force
SetCapsLockState, AlwaysOff

; RIGHT HAND
CapsLock & j::Left
CapsLock & k::Down
CapsLock & l::Right
CapsLock & i::Up

CapsLock & u::Home
CapsLock & o::End

; LEFT HAND
CapsLock & a::Left
CapsLock & s::Down
CapsLock & d::Right
CapsLock & w::Up

CapsLock & q::Home
CapsLock & e::End

CapsLock & g::BackSpace
CapsLock & t::Delete
CapsLock & b::Enter

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














