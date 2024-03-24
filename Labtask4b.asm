;b.	Using two registers only
;Title arithmetic expression
; using 2 register only
INCLUDE Irvine32.inc
.data
;X=5+(6-2)	;rVal=xVal + (yVal - zVal)
rVal DWORD ?	;uninitialized term
xVal DWORD 5h	;initialized as 5
yVal DWORD 6h	;initialized as 6
zVal DWORD 2h	;initialized as 2

.code
main PROC
mov EAX, 0h
mov EBX, 0h
mov EAX, xVal	;starts eax=5
mov EBX, yVal	;starts ebx=6
sub EBX, zVal	;ebx=6-zVal(2)=4
add EAX, EBX	;5+4
mov rVal, EAX	;here comes rVal=9

call DumpRegs ; display the registers
exit
main ENDP
END main
