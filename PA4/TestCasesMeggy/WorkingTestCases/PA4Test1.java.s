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

	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call Functionsnoise
	ldi r20,1
	pop r28
	pop r29
POPnoise1:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPnoise1
	#IntLit
	ldi r24,lo8(3)
	ldi r25,hi8(3) 

	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call Functions2noise
	ldi r20,1
	pop r28
	pop r29
POPnoise2:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPnoise2
endLabel: 
	jmp endLabel 
	ret 
	.size   main, .-main
	.text
.global Functionsnoise
	.type Functionsnoise, @function
Functionsnoise:
	#ToneLit
	ldi r25,hi8(32397)
	ldi r24,lo8(32397)

mov r26,r24
mov r27,r25
	ldd r25, Y + 4
	ldd r24, Y + 3
mov r22,r24
mov r23,r25
mov r24,r26
mov r25,r27
call _Z10Tone_Startjj
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

	ret
	.size Functionsnoise, .-Functionsnoise
	.text
.global Functions2noise
	.type Functions2noise, @function
Functions2noise:
	#ToneLit
	ldi r25,hi8(32397)
	ldi r24,lo8(32397)

mov r26,r24
mov r27,r25
	ldd r25, Y + 4
	ldd r24, Y + 3
mov r22,r24
mov r23,r25
mov r24,r26
mov r25,r27
call _Z10Tone_Startjj
	ret
	.size Functions2noise, .-Functions2noise
