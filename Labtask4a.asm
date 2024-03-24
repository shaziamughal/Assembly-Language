;Write codes to evaluate the arithmetic expression “5+(6-2)”, by: 
;a.	Using one register only

; using 1 register only
INCLUDE Irvine32.inc
.data
;X=5+(6-2)	;rVal=xVal + (yVal - zVal)
rVal DWORD ?		;uninitialized term
xVal DWORD 5h		;initialized as 5
yVal DWORD 6h		;initialized as 6
zVal DWORD 2h		;initialized as 2

.code
main PROC
mov EAX, 0h
mov EAX, yVal	;starts eax=6
sub EAX, zVal	;eax= 6-2=4
add EAX, xVal	;eax=4+5=9
mov rVal, EAX	;here comes rVal=9

call DumpRegs ; display the registers
exit
main ENDP
END main
