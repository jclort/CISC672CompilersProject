	.file  "main.java" 
__SREG__ = 0x3f 
__SP_H__ = 0x3e
__SP_L__ = 0x3d 
__tmp_reg__ = 0 
__zero_reg__ = 1 
	.global __do_copy_data
	.global __do_clear_bss 
	.text 
.global main 
	.type   main, @function 
main: 
	push r29 
	push r28 
	in r28,__SP_L__ 
	in r29,__SP_H__ 
	call _Z18MeggyJrSimpleSetupv

	ldi r21,1

endLabel: 
	jmp endLabel 
	ret 
	.size   main, .-main
	.text
.global Functionsadd
	.type Functionsadd, @function
Functionsadd:
	#PLUS
	ldd r25, Y + 6
	ldd r24, Y + 5
	mov r26,r24
	mov r27,r25
	ldd r25, Y + 4
	ldd r24, Y + 3
	add r24,r26
	adc r25,r27
	ret
	.size Functionsadd, .-Functionsadd
	.text
.global Functionsf
	.type Functionsf, @function
Functionsf:
	#FALSE
	ldi r24,0
	ldi r25,0
	ret
	.size Functionsf, .-Functionsf
	.text
.global Functionsff
	.type Functionsff, @function
Functionsff:
	#IntLit
	ldi r24,lo8(255)
	ldi r25,hi8(255) 

	#ByteCast
	ldi r25,0

	ret
	.size Functionsff, .-Functionsff
