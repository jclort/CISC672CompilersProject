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
#AND expression start
#Equals
	#IntLit
	ldi r24,lo8(7)
	ldi r25,hi8(7) 

	#Negate

	ldi r26, 0

	ldi r27, 0
	sub r26, r24 
	sbc r27, r25 

	mov r24,r26

	mov r25,r27
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

#AND expression Left
	ldi r25,0
	tst r24
	breq falseAnd0
#Equals
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

	mov r26,r24
	mov r27,r25
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

	cp  r24,r26 
	brne returnFalse1
	cpc r25,r27
	brne returnFalse1
	ldi r24,1
	jmp continue1
	returnFalse1:
	ldi r24,0
	continue1:

#NOT
	ldi r26,254
	or r24,r26
	ldi r26,255
	eor r24,r26
#AND expression Right
	tst r24
	breq falseAnd0
	ldi r24,1
jmp andContinue0
falseAnd0:
	ldi r24,0
andContinue0:
	tst r24
	breq endThenBlock1
	#IN IfStatement 2
#Equals
	#IntLit
	ldi r24,lo8(256)
	ldi r25,hi8(256) 

	mov r26,r24
	mov r27,r25
	#IntLit
	ldi r24,lo8(256)
	ldi r25,hi8(256) 

	cp  r24,r26 
	brne returnFalse2
	cpc r25,r27
	brne returnFalse2
	ldi r24,1
	jmp continue2
	returnFalse2:
	ldi r24,0
	continue2:

	tst r24
	breq endThenBlock2
beginWhile1:
#AND expression start
	#TrueLit
	ldi r24,1
	ldi r25,0

#AND expression Left
	ldi r25,0
	tst r24
	breq falseAnd1
	#TrueLit
	ldi r24,1
	ldi r25,0

#AND expression Right
	tst r24
	breq falseAnd1
	ldi r24,1
jmp andContinue1
falseAnd1:
	ldi r24,0
andContinue1:
	 tst r24
	breq endWhileStatement1
jmp beginWhile1
endWhileStatement1:
	#IntLit
	ldi r24,lo8(100)
	ldi r25,hi8(100) 

	#Delay

	call _Z8delay_msj

endThenBlock2:
endThenBlock1:
endLabel: 
	jmp endLabel 
	ret 
	.size   main, .-main
