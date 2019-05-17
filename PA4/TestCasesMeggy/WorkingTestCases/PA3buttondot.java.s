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
	ldi r24,lo8(7)
	ldi r25,hi8(7) 

	#ByteCast
	ldi r25,0

	mov r18,r24
	#IntLit
	ldi r24,lo8(7)
	ldi r25,hi8(7) 

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

	#IN IfStatement 1
#Equals
	#IntLit
	ldi r24,lo8(7)
	ldi r25,hi8(7) 

	#ByteCast
	ldi r25,0

	mov r26,r24
	mov r27,r25
	#IntLit
	ldi r24,lo8(7)
	ldi r25,hi8(7) 

	#ByteCast
	ldi r25,0

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
	breq endThenBlock1
beginWhile1:
	#TrueLit
	ldi r24,1
	ldi r25,0

	 tst r24
	breq endWhileStatement1
	#IN IfStatement 2
	#Check button
	call _Z16CheckButtonsDownv 
	lds r24,Button_A
	tst  r24
	breq  buttonFalseLabel1
	ldi r24,1
	jmp buttonContinue1
buttonFalseLabel1:
	ldi r24,0
buttonContinueLabel1:

	tst r24
	breq endThenBlock2
	#SetPixel
	#IntLit
	ldi r24,lo8(5)
	ldi r25,hi8(5) 

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
	ldi r24,6

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	#SetPixel
	#IntLit
	ldi r24,lo8(5)
	ldi r25,hi8(5) 

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
	ldi r24,6

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	#SetPixel
	#IntLit
	ldi r24,lo8(5)
	ldi r25,hi8(5) 

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
	ldi r24,6

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

jmp endElseBlock1
endThenBlock2:
	#IN IfStatement 3
	#Check button
	call _Z16CheckButtonsDownv 
	lds r24,Button_B
	tst  r24
	breq  buttonFalseLabel2
	ldi r24,1
	jmp buttonContinue2
buttonFalseLabel2:
	ldi r24,0
buttonContinueLabel2:

	tst r24
	breq endThenBlock3
	#SetPixel
	#IntLit
	ldi r24,lo8(7)
	ldi r25,hi8(7) 

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
	ldi r24,4

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	#SetPixel
	#IntLit
	ldi r24,lo8(7)
	ldi r25,hi8(7) 

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
	ldi r24,4

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	#SetPixel
	#IntLit
	ldi r24,lo8(7)
	ldi r25,hi8(7) 

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
	ldi r24,4

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

jmp endElseBlock2
endThenBlock3:
	#SetPixel
	#IntLit
	ldi r24,lo8(6)
	ldi r25,hi8(6) 

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
	ldi r24,2

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	#SetPixel
	#IntLit
	ldi r24,lo8(6)
	ldi r25,hi8(6) 

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
	ldi r24,2

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	#SetPixel
	#IntLit
	ldi r24,lo8(6)
	ldi r25,hi8(6) 

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
	ldi r24,2

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

endElseBlock2:
endElseBlock2:
	#IntLit
	ldi r24,lo8(100)
	ldi r25,hi8(100) 

	#Delay

	call _Z8delay_msj

jmp beginWhile1
endWhileStatement1:
endThenBlock1:
endLabel: 
	jmp endLabel 
	ret 
	.size   main, .-main
