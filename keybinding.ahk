#NoEnv
#Persistent
!q::Flag := !Flag

;normal usage script set
!ı::send, {up}
!j::send, {left}
!k::send, {down}
!l::send, {right}

^!j::send,^{left}
^!l::send,^{right}

^j::send,{home}
^l::send,{end}

!d::send,^+{left}
;^n::send,+{up}

!Capslock::Tab
LWin & Capslock::Tab

!h::
Send,=
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

;flag false
#If (Flag) 

;advanced scripts

!ş::
Send, {Raw} = () => {}
Send, {Left 7} 
return

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
Send,""
Send, {Left 1}
return

ç::
Send,''
Send, {Left 1}
return

!-::
Send,_
return

#If 


 








