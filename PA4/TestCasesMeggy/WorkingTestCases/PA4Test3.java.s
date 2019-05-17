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
#LT start
	#IntLit
	ldi r24,lo8(3)
	ldi r25,hi8(3) 

#LT left
	mov r26,r24
	mov r27,r25
	#IntLit
	ldi r24,lo8(5)
	ldi r25,hi8(5) 

#LT right
	cp  r26,r24 
	cpc r27,r25
	brlt returnTrueLT0
	ldi r24,0
	jmp continueLT0
	returnTrueLT0:
	ldi r24,1
	continueLT0:
	tst r24
	breq endThenBlock1
endThenBlock1:
endLabel: 
	jmp endLabel 
	ret 
	.size   main, .-main
	.text
.global Functionsblue
	.type Functionsblue, @function
Functionsblue:
	#ColorLit
	ldi r25,0
	ldi r24,5

	ret
	.size Functionsblue, .-Functionsblue
	.text
.global FunctionsB
	.type FunctionsB, @function
FunctionsB:
	ret
	.size FunctionsB, .-FunctionsB
	.text
.global Functionsb3
	.type Functionsb3, @function
Functionsb3:
	#ToneLit
	ldi r25,hi8(32397)
	ldi r24,lo8(32397)

	ret
	.size Functionsb3, .-Functionsb3
