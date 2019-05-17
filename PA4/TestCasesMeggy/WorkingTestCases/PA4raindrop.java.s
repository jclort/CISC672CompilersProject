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

beginWhile1:
	#TrueLit
	ldi r24,1
	ldi r25,0

	 tst r24
	breq endWhileStatement1
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
	call Cloudrain
	ldi r20,2
	pop r28
	pop r29
POPrain1:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPrain1
	#IntLit
	ldi r24,lo8(500)
	ldi r25,hi8(500) 

	#Delay

	call _Z8delay_msj

	#SetPixel
	#IntLit
	ldi r24,lo8(3)
	ldi r25,hi8(3) 

	#ByteCast
	ldi r25,0

	mov r18,r24
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

	#ByteCast
	ldi r25,0

	mov r19,r24
	#ColorLit
	ldi r25,0
	ldi r24,0

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	#SetPixel
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

	#ByteCast
	ldi r25,0

	mov r18,r24
	#IntLit
	ldi r24,lo8(6)
	ldi r25,hi8(6) 

	#ByteCast
	ldi r25,0

	mov r19,r24
	#ColorLit
	ldi r25,0
	ldi r24,2

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

jmp beginWhile1
endWhileStatement1:
endLabel: 
	jmp endLabel 
	ret 
	.size   main, .-main
	.text
.global Cloudrain
	.type Cloudrain, @function
Cloudrain:
	#IN IfStatement 1
	ldd r25, Y + 6
	ldd r24, Y + 5
	push r25
	push r24
	ldd r25, Y + 4
	ldd r24, Y + 3
	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call CloudinBounds
	ldi r20,2
	pop r28
	pop r29
POPinBounds2:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPinBounds2
	tst r24
	breq endThenBlock1
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

	#IN IfStatement 2
	ldd r25, Y + 6
	ldd r24, Y + 5
	push r25
	push r24
	#PLUS
	ldd r25, Y + 4
	ldd r24, Y + 3
	mov r26,r24
	mov r27,r25
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

	#ByteCast
	ldi r25,0

	add r24,r26
	adc r25,r27
	#ByteCast
	ldi r25,0

	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call CloudinBounds
	ldi r20,2
	pop r28
	pop r29
POPinBounds3:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPinBounds3
	tst r24
	breq endThenBlock2
	#SetPixel
	ldd r25, Y + 6
	ldd r24, Y + 5
	mov r18,r24
	#PLUS
	ldd r25, Y + 4
	ldd r24, Y + 3
	mov r26,r24
	mov r27,r25
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

	#ByteCast
	ldi r25,0

	add r24,r26
	adc r25,r27
	#ByteCast
	ldi r25,0

	mov r19,r24
	#ColorLit
	ldi r25,0
	ldi r24,0

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

jmp endElseBlock2
endThenBlock2:
endElseBlock2:
	#IntLit
	ldi r24,lo8(100)
	ldi r25,hi8(100) 

	#Delay

	call _Z8delay_msj

	ldd r25, Y + 6
	ldd r24, Y + 5
	push r25
	push r24
#MINUS
	ldd r25, Y + 4
	ldd r24, Y + 3
	mov r26,r24
	mov r27,r25
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

	#ByteCast
	ldi r25,0

	sub r26,r24
	sbc r27,r25
	mov r24,r26
	mov r25,r27
	#ByteCast
	ldi r25,0

	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call Cloudrain
	ldi r20,2
	pop r28
	pop r29
POPrain4:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPrain4
jmp endElseBlock1
endThenBlock1:
endElseBlock1:
	ret
	.size Cloudrain, .-Cloudrain
	.text
.global CloudinBounds
	.type CloudinBounds, @function
CloudinBounds:
#AND expression start
#LT start
#MINUS
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

	mov r26,r24
	mov r27,r25
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

	sub r26,r24
	sbc r27,r25
	mov r24,r26
	mov r25,r27
	#ByteCast
	ldi r25,0

#LT left
	mov r26,r24
	mov r27,r25
	ldd r25, Y + 4
	ldd r24, Y + 3
#LT right
	cp  r26,r24 
	brlt returnTrueLT0
	ldi r24,0
	jmp continueLT0
	returnTrueLT0:
	ldi r24,1
	continueLT0:
#AND expression Left
	ldi r25,0
	tst r24
	breq falseAnd0
#LT start
	ldd r25, Y + 4
	ldd r24, Y + 3
#LT left
	mov r26,r24
	mov r27,r25
	#IntLit
	ldi r24,lo8(8)
	ldi r25,hi8(8) 

	#ByteCast
	ldi r25,0

#LT right
	cp  r26,r24 
	brlt returnTrueLT1
	ldi r24,0
	jmp continueLT1
	returnTrueLT1:
	ldi r24,1
	continueLT1:
#AND expression Right
	tst r24
	breq falseAnd0
	ldi r24,1
jmp andContinue0
falseAnd0:
	ldi r24,0
andContinue0:
	ret
	.size CloudinBounds, .-CloudinBounds
