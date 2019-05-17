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

	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call Solverrun
	ldi r20,0
	pop r28
	pop r29
POPrun1:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPrun1
endLabel: 
	jmp endLabel 
	ret 
	.size   main, .-main
	.text
.global SolverinitMaze1
	.type SolverinitMaze1, @function
SolverinitMaze1:
	ret
	.size SolverinitMaze1, .-SolverinitMaze1
	.text
.global SolverinitMaze2
	.type SolverinitMaze2, @function
SolverinitMaze2:
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

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
	call SolvermazeRow
	ldi r20,3
	pop r28
	pop r29
POPmazeRow2:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeRow2
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(5)
	ldi r25,hi8(5) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(5)
	ldi r25,hi8(5) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call SolvermazeRow
	ldi r20,3
	pop r28
	pop r29
POPmazeRow3:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeRow3
	#IntLit
	ldi r24,lo8(7)
	ldi r25,hi8(7) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

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
	call SolvermazeCol
	ldi r20,3
	pop r28
	pop r29
POPmazeCol4:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeCol4
	#IntLit
	ldi r24,lo8(5)
	ldi r25,hi8(5) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(5)
	ldi r25,hi8(5) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call SolvermazeCol
	ldi r20,3
	pop r28
	pop r29
POPmazeCol5:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeCol5
	ret
	.size SolverinitMaze2, .-SolverinitMaze2
	.text
.global SolverinitMazeCool
	.type SolverinitMazeCool, @function
SolverinitMazeCool:
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

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
	call SolvermazeRow
	ldi r20,3
	pop r28
	pop r29
POPmazeRow6:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeRow6
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

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
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call SolvermazeRow
	ldi r20,3
	pop r28
	pop r29
POPmazeRow7:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeRow7
	#IntLit
	ldi r24,lo8(7)
	ldi r25,hi8(7) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

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
	call SolvermazeCol
	ldi r20,3
	pop r28
	pop r29
POPmazeCol8:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeCol8
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(0)
	ldi r25,hi8(0) 

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
	call SolvermazeCol
	ldi r20,3
	pop r28
	pop r29
POPmazeCol9:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeCol9
	#IntLit
	ldi r24,lo8(2)
	ldi r25,hi8(2) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(5)
	ldi r25,hi8(5) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(5)
	ldi r25,hi8(5) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call SolvermazeRow
	ldi r20,3
	pop r28
	pop r29
POPmazeRow10:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeRow10
	#IntLit
	ldi r24,lo8(2)
	ldi r25,hi8(2) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(2)
	ldi r25,hi8(2) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(5)
	ldi r25,hi8(5) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call SolvermazeCol
	ldi r20,3
	pop r28
	pop r29
POPmazeCol11:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeCol11
	#IntLit
	ldi r24,lo8(2)
	ldi r25,hi8(2) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(5)
	ldi r25,hi8(5) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(2)
	ldi r25,hi8(2) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call SolvermazeRow
	ldi r20,3
	pop r28
	pop r29
POPmazeRow12:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeRow12
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

	ret
	.size SolverinitMazeCool, .-SolverinitMazeCool
	.text
.global Solverrun
	.type Solverrun, @function
Solverrun:
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call SolverinitMazeCool
	ldi r20,0
	pop r28
	pop r29
POPinitMazeCool13:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPinitMazeCool13
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(6)
	ldi r25,hi8(6) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(6)
	ldi r25,hi8(6) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	#IntLit
	ldi r24,lo8(1)
	ldi r25,hi8(1) 

	#ByteCast
	ldi r25,0

	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call Solvermove
	ldi r20,4
	pop r28
	pop r29
POPmove14:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmove14
	ret
	.size Solverrun, .-Solverrun
	.text
.global SolverinBounds
	.type SolverinBounds, @function
SolverinBounds:
#AND expression start
#AND expression start
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
	ldd r25, Y + 6
	ldd r24, Y + 5
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
	ldd r25, Y + 6
	ldd r24, Y + 5
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
#AND expression Left
	ldi r25,0
	tst r24
	breq falseAnd1
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
	brlt returnTrueLT2
	ldi r24,0
	jmp continueLT2
	returnTrueLT2:
	ldi r24,1
	continueLT2:
#AND expression Right
	tst r24
	breq falseAnd1
	ldi r24,1
jmp andContinue1
falseAnd1:
	ldi r24,0
andContinue1:
#AND expression Left
	ldi r25,0
	tst r24
	breq falseAnd2
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
	brlt returnTrueLT3
	ldi r24,0
	jmp continueLT3
	returnTrueLT3:
	ldi r24,1
	continueLT3:
#AND expression Right
	tst r24
	breq falseAnd2
	ldi r24,1
jmp andContinue2
falseAnd2:
	ldi r24,0
andContinue2:
	ret
	.size SolverinBounds, .-SolverinBounds
	.text
.global SolverisDark
	.type SolverisDark, @function
SolverisDark:
#AND expression start
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
	call SolverinBounds
	ldi r20,2
	pop r28
	pop r29
POPinBounds15:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPinBounds15
#AND expression Left
	ldi r25,0
	tst r24
	breq falseAnd3
#Equals
	ldd r25, Y + 6
	ldd r24, Y + 5
	ldd r25, Y + 4
	ldd r24, Y + 3
	#GetPixel
	call _Z6ReadPxhh
	mov r26,r24
	mov r27,r25
	#ColorLit
	ldi r25,0
	ldi r24,0

	cp  r24,r26 
	brne returnFalse0
	cpc r25,r27
	brne returnFalse0
	ldi r24,1
	jmp continue0
	returnFalse0:
	ldi r24,0
	continue0:

#AND expression Right
	tst r24
	breq falseAnd3
	ldi r24,1
jmp andContinue3
falseAnd3:
	ldi r24,0
andContinue3:
	ret
	.size SolverisDark, .-SolverisDark
	.text
.global SolverisBLUE
	.type SolverisBLUE, @function
SolverisBLUE:
#AND expression start
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
	call SolverinBounds
	ldi r20,2
	pop r28
	pop r29
POPinBounds16:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPinBounds16
#AND expression Left
	ldi r25,0
	tst r24
	breq falseAnd4
#Equals
	ldd r25, Y + 6
	ldd r24, Y + 5
	ldd r25, Y + 4
	ldd r24, Y + 3
	#GetPixel
	call _Z6ReadPxhh
	mov r26,r24
	mov r27,r25
	#ColorLit
	ldi r25,0
	ldi r24,5

	cp  r24,r26 
	brne returnFalse1
	cpc r25,r27
	brne returnFalse1
	ldi r24,1
	jmp continue1
	returnFalse1:
	ldi r24,0
	continue1:

#AND expression Right
	tst r24
	breq falseAnd4
	ldi r24,1
jmp andContinue4
falseAnd4:
	ldi r24,0
andContinue4:
	ret
	.size SolverisBLUE, .-SolverisBLUE
	.text
.global SolverfindTargetOrMove
	.type SolverfindTargetOrMove, @function
SolverfindTargetOrMove:
	#IN IfStatement 1
#AND expression start
#Equals
	ldd r25, Y + 10
	ldd r24, Y + 9
	mov r26,r24
	mov r27,r25
	ldd r25, Y + 6
	ldd r24, Y + 5
	cp  r24,r26 
	brne returnFalse2
	cpc r25,r27
	brne returnFalse2
	ldi r24,1
	jmp continue2
	returnFalse2:
	ldi r24,0
	continue2:

#AND expression Left
	ldi r25,0
	tst r24
	breq falseAnd5
#Equals
	ldd r25, Y + 8
	ldd r24, Y + 7
	mov r26,r24
	mov r27,r25
	ldd r25, Y + 4
	ldd r24, Y + 3
	cp  r24,r26 
	brne returnFalse3
	cpc r25,r27
	brne returnFalse3
	ldi r24,1
	jmp continue3
	returnFalse3:
	ldi r24,0
	continue3:

#AND expression Right
	tst r24
	breq falseAnd5
	ldi r24,1
jmp andContinue5
falseAnd5:
	ldi r24,0
andContinue5:
	tst r24
	breq endThenBlock1
	#SetPixel
	ldd r25, Y + 10
	ldd r24, Y + 9
	mov r18,r24
	ldd r25, Y + 8
	ldd r24, Y + 7
	mov r19,r24
	#ColorLit
	ldi r25,0
	ldi r24,5

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

jmp endElseBlock1
endThenBlock1:
	ldd r25, Y + 10
	ldd r24, Y + 9
	push r25
	push r24
	ldd r25, Y + 8
	ldd r24, Y + 7
	push r25
	push r24
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
	call Solvermove
	ldi r20,4
	pop r28
	pop r29
POPmove17:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmove17
endElseBlock1:
	ret
	.size SolverfindTargetOrMove, .-SolverfindTargetOrMove
	.text
.global Solvermove
	.type Solvermove, @function
Solvermove:
	#IntLit
	ldi r24,lo8(256)
	ldi r25,hi8(256) 

	#Delay

	call _Z8delay_msj

	#SetPixel
	ldd r25, Y + 10
	ldd r24, Y + 9
	mov r18,r24
	ldd r25, Y + 8
	ldd r24, Y + 7
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
	ldd r25, Y + 10
	ldd r24, Y + 9
	push r25
	push r24
#MINUS
	ldd r25, Y + 8
	ldd r24, Y + 7
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
	call SolverisDark
	ldi r20,2
	pop r28
	pop r29
POPisDark18:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPisDark18
	tst r24
	breq endThenBlock2
	ldd r25, Y + 10
	ldd r24, Y + 9
	push r25
	push r24
#MINUS
	ldd r25, Y + 8
	ldd r24, Y + 7
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
	call SolverfindTargetOrMove
	ldi r20,4
	pop r28
	pop r29
POPfindTargetOrMove19:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPfindTargetOrMove19
jmp endElseBlock2
endThenBlock2:
	#IN IfStatement 3
	#PLUS
	ldd r25, Y + 10
	ldd r24, Y + 9
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
	ldd r25, Y + 8
	ldd r24, Y + 7
	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call SolverisDark
	ldi r20,2
	pop r28
	pop r29
POPisDark20:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPisDark20
	tst r24
	breq endThenBlock3
	#PLUS
	ldd r25, Y + 10
	ldd r24, Y + 9
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
	ldd r25, Y + 8
	ldd r24, Y + 7
	push r25
	push r24
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
	call SolverfindTargetOrMove
	ldi r20,4
	pop r28
	pop r29
POPfindTargetOrMove21:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPfindTargetOrMove21
jmp endElseBlock3
endThenBlock3:
	#IN IfStatement 4
	ldd r25, Y + 10
	ldd r24, Y + 9
	push r25
	push r24
	#PLUS
	ldd r25, Y + 8
	ldd r24, Y + 7
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
	call SolverisDark
	ldi r20,2
	pop r28
	pop r29
POPisDark22:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPisDark22
	tst r24
	breq endThenBlock4
	ldd r25, Y + 10
	ldd r24, Y + 9
	push r25
	push r24
	#PLUS
	ldd r25, Y + 8
	ldd r24, Y + 7
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
	call SolverfindTargetOrMove
	ldi r20,4
	pop r28
	pop r29
POPfindTargetOrMove23:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPfindTargetOrMove23
jmp endElseBlock4
endThenBlock4:
	#IN IfStatement 5
#MINUS
	ldd r25, Y + 10
	ldd r24, Y + 9
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
	ldd r25, Y + 8
	ldd r24, Y + 7
	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call SolverisDark
	ldi r20,2
	pop r28
	pop r29
POPisDark24:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPisDark24
	tst r24
	breq endThenBlock5
#MINUS
	ldd r25, Y + 10
	ldd r24, Y + 9
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
	ldd r25, Y + 8
	ldd r24, Y + 7
	push r25
	push r24
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
	call SolverfindTargetOrMove
	ldi r20,4
	pop r28
	pop r29
POPfindTargetOrMove25:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPfindTargetOrMove25
jmp endElseBlock5
endThenBlock5:
	#IN IfStatement 6
	ldd r25, Y + 10
	ldd r24, Y + 9
	push r25
	push r24
#MINUS
	ldd r25, Y + 8
	ldd r24, Y + 7
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
	call SolverisBLUE
	ldi r20,2
	pop r28
	pop r29
POPisBLUE26:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPisBLUE26
	tst r24
	breq endThenBlock6
	#SetPixel
	ldd r25, Y + 10
	ldd r24, Y + 9
	mov r18,r24
	ldd r25, Y + 8
	ldd r24, Y + 7
	mov r19,r24
	#ColorLit
	ldi r25,0
	ldi r24,3

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	ldd r25, Y + 10
	ldd r24, Y + 9
	push r25
	push r24
#MINUS
	ldd r25, Y + 8
	ldd r24, Y + 7
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
	call Solvermove
	ldi r20,4
	pop r28
	pop r29
POPmove27:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmove27
jmp endElseBlock6
endThenBlock6:
	#IN IfStatement 7
	#PLUS
	ldd r25, Y + 10
	ldd r24, Y + 9
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
	ldd r25, Y + 8
	ldd r24, Y + 7
	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call SolverisBLUE
	ldi r20,2
	pop r28
	pop r29
POPisBLUE28:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPisBLUE28
	tst r24
	breq endThenBlock7
	#SetPixel
	ldd r25, Y + 10
	ldd r24, Y + 9
	mov r18,r24
	ldd r25, Y + 8
	ldd r24, Y + 7
	mov r19,r24
	#ColorLit
	ldi r25,0
	ldi r24,3

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	#PLUS
	ldd r25, Y + 10
	ldd r24, Y + 9
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
	ldd r25, Y + 8
	ldd r24, Y + 7
	push r25
	push r24
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
	call Solvermove
	ldi r20,4
	pop r28
	pop r29
POPmove29:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmove29
jmp endElseBlock7
endThenBlock7:
	#IN IfStatement 8
	ldd r25, Y + 10
	ldd r24, Y + 9
	push r25
	push r24
	#PLUS
	ldd r25, Y + 8
	ldd r24, Y + 7
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
	call SolverisBLUE
	ldi r20,2
	pop r28
	pop r29
POPisBLUE30:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPisBLUE30
	tst r24
	breq endThenBlock8
	#SetPixel
	ldd r25, Y + 10
	ldd r24, Y + 9
	mov r18,r24
	ldd r25, Y + 8
	ldd r24, Y + 7
	mov r19,r24
	#ColorLit
	ldi r25,0
	ldi r24,3

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	ldd r25, Y + 10
	ldd r24, Y + 9
	#ByteCast
	ldi r25,0

	push r25
	push r24
	#PLUS
	ldd r25, Y + 8
	ldd r24, Y + 7
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
	call Solvermove
	ldi r20,4
	pop r28
	pop r29
POPmove31:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmove31
jmp endElseBlock8
endThenBlock8:
	#IN IfStatement 9
#MINUS
	ldd r25, Y + 10
	ldd r24, Y + 9
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
	ldd r25, Y + 8
	ldd r24, Y + 7
	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call SolverisBLUE
	ldi r20,2
	pop r28
	pop r29
POPisBLUE32:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPisBLUE32
	tst r24
	breq endThenBlock9
	#SetPixel
	ldd r25, Y + 10
	ldd r24, Y + 9
	mov r18,r24
	ldd r25, Y + 8
	ldd r24, Y + 7
	mov r19,r24
	#ColorLit
	ldi r25,0
	ldi r24,3

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

#MINUS
	ldd r25, Y + 10
	ldd r24, Y + 9
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
	ldd r25, Y + 8
	ldd r24, Y + 7
	push r25
	push r24
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
	call Solvermove
	ldi r20,4
	pop r28
	pop r29
POPmove33:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmove33
jmp endElseBlock9
endThenBlock9:
endElseBlock9:
endElseBlock9:
endElseBlock9:
endElseBlock9:
endElseBlock9:
endElseBlock9:
endElseBlock9:
endElseBlock9:
	ret
	.size Solvermove, .-Solvermove
	.text
.global SolvermazeRow
	.type SolvermazeRow, @function
SolvermazeRow:
	#SetPixel
	ldd r25, Y + 8
	ldd r24, Y + 7
	mov r18,r24
	ldd r25, Y + 4
	ldd r24, Y + 3
	mov r19,r24
	#ColorLit
	ldi r25,0
	ldi r24,6

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	#IN IfStatement 10
#LT start
	ldd r25, Y + 8
	ldd r24, Y + 7
#LT left
	mov r26,r24
	mov r27,r25
	ldd r25, Y + 6
	ldd r24, Y + 5
#LT right
	cp  r26,r24 
	brlt returnTrueLT4
	ldi r24,0
	jmp continueLT4
	returnTrueLT4:
	ldi r24,1
	continueLT4:
	tst r24
	breq endThenBlock10
	#PLUS
	ldd r25, Y + 8
	ldd r24, Y + 7
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
	call SolvermazeRow
	ldi r20,3
	pop r28
	pop r29
POPmazeRow34:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeRow34
jmp endElseBlock10
endThenBlock10:
endElseBlock10:
	ret
	.size SolvermazeRow, .-SolvermazeRow
	.text
.global SolvermazeCol
	.type SolvermazeCol, @function
SolvermazeCol:
	#SetPixel
	ldd r25, Y + 8
	ldd r24, Y + 7
	mov r18,r24
	ldd r25, Y + 6
	ldd r24, Y + 5
	mov r19,r24
	#ColorLit
	ldi r25,0
	ldi r24,6

	mov r20,r24
	mov r22,r19
	mov r24,r18
	call _Z6DrawPxhhh
	call _Z12DisplaySlatev

	#IN IfStatement 11
#LT start
	ldd r25, Y + 6
	ldd r24, Y + 5
#LT left
	mov r26,r24
	mov r27,r25
	ldd r25, Y + 4
	ldd r24, Y + 3
#LT right
	cp  r26,r24 
	brlt returnTrueLT5
	ldi r24,0
	jmp continueLT5
	returnTrueLT5:
	ldi r24,1
	continueLT5:
	tst r24
	breq endThenBlock11
	ldd r25, Y + 8
	ldd r24, Y + 7
	push r25
	push r24
	#PLUS
	ldd r25, Y + 6
	ldd r24, Y + 5
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
	ldd r25, Y + 4
	ldd r24, Y + 3
	push r25
	push r24
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	call SolvermazeCol
	ldi r20,3
	pop r28
	pop r29
POPmazeCol35:
	pop r12
	pop r12
	sub r20,r21
	tst r20
	brne POPmazeCol35
jmp endElseBlock11
endThenBlock11:
endElseBlock11:
	ret
	.size SolvermazeCol, .-SolvermazeCol
