;Write code to achieve the following: 
;1. Define two 8 bit variables var1, and var2, and initialize these to 20, and 30.
;2. Swap the contents of var1 and var2 variables using registers. 
;3. Display the contents of the registers. (Use “call dumpregs” instruction twice, First display variable before swapping, then display variable after swapping)

;Title swap
;8 bit unsigned numbers 
;swap the two variables using registers
INCLUDE Irvine32.inc
.data
var1 BYTE 20h 	;initializing var1 to 20
var2 BYTE 30h	;initializing var2 to 30
.code
main PROC
mov eax, 0h 
mov ebx, 0h
mov ecx, 0h 
mov AL, var1   	;make a copy of var1 to AL register(EAX=20)
mov BL, var2	;save a copy of var2 to Ah register (EBX=30)

;swap
mov CL, AL	;move AL(var1) to CL-->> now CL= 20h
mov AL, BL	;move BL(var2) to AL-->> now AL= 30h
mov BL, CL	;move CL(var1) to BL-->> now BL=20h
mov CL, 0h;	;changing it to 0h again 
		;now EAX=30 nd EBX=20 

call DumpRegs ; display the registers
exit
main ENDP
END main
