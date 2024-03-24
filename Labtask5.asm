;display the remainder and quotient in hexadecimal.

include irvine32.inc 

;data is stored here for later use
.data

.code 
main PROC
    ;calculate Qoutient and Remainder of Constant numbers
    mov eax, 0  ;initialize as zero
    mov ebx, 0  ; initialize as zero
    mov eax ,-10/3  ;qoutient of (-10/3)=-3 (FFFFFFFD)
    mov ebx , -1*(10 MOD 3) 

    ;Display results in registers
    call Dumpregs

    exit
main ENDP
END main
