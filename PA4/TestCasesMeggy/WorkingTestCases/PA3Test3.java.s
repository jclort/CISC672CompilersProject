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

	#SetPixel
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

	#ByteCast
	ldi r25,0

	mov r18,r24
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

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

	#IN IfStatement 1
	#TrueLit
	ldi r24,1
	ldi r25,0

	tst r24
	breq endThenBlock1
	#IN IfStatement 2
	#TrueLit
	ldi r24,1
	ldi r25,0

	tst r24
	breq endThenBlock2
	#IN IfStatement 3
	#TrueLit
	ldi r24,1
	ldi r25,0

	tst r24
	breq endThenBlock3
jmp endElseBlock1
endThenBlock3:
endElseBlock1:
endThenBlock2:
endThenBlock1:
beginWhile1:
	#FALSE
	ldi r24,0
	ldi r25,0
	 tst r24
	breq endWhileStatement1
beginWhile2:
	#FALSE
	ldi r24,0
	ldi r25,0
	 tst r24
	breq endWhileStatement2
	#IN IfStatement 4
	#TrueLit
	ldi r24,1
	ldi r25,0

	tst r24
	breq endThenBlock4
endThenBlock4:
jmp beginWhile2
endWhileStatement2:
jmp beginWhile2
endWhileStatement1:
endLabel: 
	jmp endLabel 
	ret 
	.size   main, .-main
