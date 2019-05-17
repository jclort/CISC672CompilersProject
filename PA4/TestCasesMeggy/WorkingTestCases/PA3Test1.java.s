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

	#IN IfStatement 1
	#Check button
	call _Z16CheckButtonsDownv 
	lds r24,Button_B
	tst  r24
	breq  buttonFalseLabel1
	ldi r24,1
	jmp buttonContinue1
buttonFalseLabel1:
	ldi r24,0
buttonContinueLabel1:

	tst r24
	breq endThenBlock1
	#IntLit
	ldi r24,lo8(2)
	ldi r25,hi8(2) 

	#Delay

	call _Z8delay_msj

endThenBlock1:
	#IN IfStatement 2
#Equals
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

	#ByteCast
	ldi r25,0

	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

	#ByteCast
	ldi r25,0

	#GetPixel
	call _Z6ReadPxhh
	mov r26,r24
	mov r27,r25
	#ColorLit
	ldi r25,0
	ldi r24,5

	cp  r24,r26 
	brne returnFalse0
	cpc r25,r27
	brne returnFalse0
	ldi r24,1
	jmp continue0
	returnFalse0:
	ldi r24,0
	continue0:

	tst r24
	breq endThenBlock2
endThenBlock2:
	#IN IfStatement 3
	#FALSE
	ldi r24,0
	ldi r25,0
	tst r24
	breq endThenBlock3
jmp endElseBlock1
endThenBlock3:
endElseBlock1:
	#IN IfStatement 4
	#TrueLit
	ldi r24,1
	ldi r25,0

	tst r24
	breq endThenBlock4
endThenBlock4:
endLabel: 
	jmp endLabel 
	ret 
	.size   main, .-main
