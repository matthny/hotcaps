#SingleInstance, Force
SetCapsLockState, AlwaysOff

; RIGHT HAND
CapsLock & i::Up
CapsLock & j::Left
CapsLock & k::Down
CapsLock & l::Right

CapsLock & u::Home
CapsLock & o::End 

; LEFT HAND
CapsLock & w::Up
CapsLock & a::Left
CapsLock & s::Down
CapsLock & d::Right

CapsLock & q::Home
CapsLock & e::End 

CapsLock & t::Delete
CapsLock & g::BackSpace
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














