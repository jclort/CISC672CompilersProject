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

	#IntLit
	ldi r24,lo8(3)
	ldi r25,hi8(3) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(7)
	ldi r25,hi8(7) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call Simplebluedot
	ldi r20,2
	pop r28
	pop r29
POPbluedot1:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPbluedot1
	#SetPixel
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

	#ByteCast
	ldi r25,0

	mov r18,r24
	#IntLit
	ldi r24,lo8(2)
	ldi r25,hi8(2) 

	#ByteCast
	ldi r25,0

	mov r19,r24
	#ColorLit
	ldi r25,0
	ldi r24,5

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

endLabel: 
	jmp endLabel 
	ret 
	.size   main, .-main
	.text
.global Simplebluedot
	.type Simplebluedot, @function
Simplebluedot:
	#SetPixel
	ldd r25, Y + 6
	ldd r24, Y + 5
	mov r18,r24
	ldd r25, Y + 4
	ldd r24, Y + 3
	mov r19,r24
	#ColorLit
	ldi r25,0
	ldi r24,5

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	ret
	.size Simplebluedot, .-Simplebluedot
