#NoEnv
#Persistent
;/* ------------------------- normal usage script set ------------------------ */

;flag for switch to developer mode
!q::Flag := !Flag

;jump between words
^!j::send,^{left}
return 

^!l::send,^{right}
return

;arrow keys
#if !GetKeyState("LCtrl") && !GetKeyState("Shift")
Alt & ı::send , {up}
Alt & j::send , {left}
Alt & k::send , {down}
Alt & l::send , {right}
#if

;jump to end of line or start of line
^j::send ,{home}
^l::send ,{end}

!d::send,^+{left}
;^n::send,+{up}

!Capslock::Tab
LWin & Capslock::Tab

!Tab::
Send, ^!{Tab}
return

!h::
Send,=
KeyWait, h
return

!b::
Send,(){left}
return

!n::
Send,{{}{}}{left}
return

!m::
Send,[]{left}
return

!7::
Send,{{}
return

!8::
Send,[
return

!9::
Send,]
return

!0::
Send,{}}
return

!.::
Send,:
return

!ş::
Send,;
return

;/* --------------------------- terminal hotstrings -------------------------- */

;/* -------------------------------- beanstalk ec2 ------------------------------- */
:?*:.cdb::
SendInput,cd /var/app/current{Enter}
return

:?*:.beanplog::
SendInput,tail -f /var/app/current/storage/logs/laravel.log{Enter}
return
;/* ---------------------------- end of beanstalk ec2 ---------------------------- */

:?*:.getip::
SendInput,{Raw}dig +short myip.opendns.com @resolver1.opendns.com
return

:?*:.nginxlog::
SendInput,tail -f /var/log/nginx/*.log{Enter}
return

:?*:.suu::
SendInput,sudo su{Enter}
return

;tmp
:?*:.w1p::
SendInput,{Raw}y?kuBh2uE!kJgXa
return

:?*:.cds::
SendInput,{Raw}cd /var/www/uyanik.tv/html/scripts/
return

:?*:.todo::
SendInput,{Raw}// TODO: 
return

:?*:.inf::
SendInput,{Raw}// INFO: 
return

;/* -------------------------- developer hotstrings -------------------------- */
;check flag is true or not
#If (Flag) 

;!ş::
;Send, {Raw} = () => {}
;Send, {Left 7} 
;return

!+ş::
Send, {Raw}() => {}
Send, {Left 7}
return

ğ::
Send,$
return

ü::
Send,&
return

!,::
Send,``
Send,``
Send, {Left 1}
return

!ç::
Send,''
Send, {Left 1}
return

ç::
Send,""
Send, {Left 1}
return

!-::
Send,_
return

ö::
Send,{Raw}${}
Send, {Left 1}
return

#If 
