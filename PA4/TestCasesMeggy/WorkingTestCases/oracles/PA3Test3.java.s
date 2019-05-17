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
/* prologue: function */
    call _Z18MeggyJrSimpleSetupv 
    /* Need to call this so that the meggy library gets set up */


    # Load constant int 1
    ldi    r24,lo8(1)
    ldi    r25,hi8(1)
    # push two byte expression onto stack
    push   r25
    push   r24

    # Casting int to byte by popping
    # 2 bytes off stack and only pushing low order bits
    # back on.  Low order bits are on top of stack.
    pop    r24
    pop    r25
    push   r24

    # Load constant int 1
    ldi    r24,lo8(1)
    ldi    r25,hi8(1)
    # push two byte expression onto stack
    push   r25
    push   r24

    # Casting int to byte by popping
    # 2 bytes off stack and only pushing low order bits
    # back on.  Low order bits are on top of stack.
    pop    r24
    pop    r25
    push   r24

    # Color expression Meggy.Color.BLUE
    ldi    r22,5
    # push one byte expression onto stack
    push   r22

    ### Meggy.setPixel(x,y,color) call
    # load a one byte expression off stack
    pop    r20
    # load a one byte expression off stack
    pop    r22
    # load a one byte expression off stack
    pop    r24
    call   _Z6DrawPxhhh
    call   _Z12DisplaySlatev

    #### if statement

    # True/1 expression
    ldi    r22, 1
    # push one byte expression onto stack
    push   r22

    # load condition and branch if false
    # load a one byte expression off stack
    pop    r24
    #load zero into reg
    ldi    r25, 0

    #use cp to set SREG
    cp     r24, r25
    #WANT breq MJ_L0
    brne   MJ_L1
    jmp    MJ_L0

    # then label for if
MJ_L1:

    #### if statement

    # True/1 expression
    ldi    r22, 1
    # push one byte expression onto stack
    push   r22

    # load condition and branch if false
    # load a one byte expression off stack
    pop    r24
    #load zero into reg
    ldi    r25, 0

    #use cp to set SREG
    cp     r24, r25
    #WANT breq MJ_L3
    brne   MJ_L4
    jmp    MJ_L3

    # then label for if
MJ_L4:

    #### if statement

    # True/1 expression
    ldi    r22, 1
    # push one byte expression onto stack
    push   r22

    # load condition and branch if false
    # load a one byte expression off stack
    pop    r24
    #load zero into reg
    ldi    r25, 0

    #use cp to set SREG
    cp     r24, r25
    #WANT breq MJ_L6
    brne   MJ_L7
    jmp    MJ_L6

    # then label for if
MJ_L7:
    jmp    MJ_L8

    # else label for if
MJ_L6:

    # done label for if
MJ_L8:
    jmp    MJ_L5

    # else label for if
MJ_L3:

    # done label for if
MJ_L5:
    jmp    MJ_L2

    # else label for if
MJ_L0:

    # done label for if
MJ_L2:

    #### while statement
MJ_L9:

    # False/0 expression
    ldi    r24,0
    # push one byte expression onto stack
    push   r24

    # if not(condition)
    # load a one byte expression off stack
    pop    r24
    ldi    r25,0
    cp     r24, r25
    # WANT breq MJ_L11
    brne   MJ_L10
    jmp    MJ_L11

    # while loop body
MJ_L10:

    #### while statement
MJ_L12:

    # False/0 expression
    ldi    r24,0
    # push one byte expression onto stack
    push   r24

    # if not(condition)
    # load a one byte expression off stack
    pop    r24
    ldi    r25,0
    cp     r24, r25
    # WANT breq MJ_L14
    brne   MJ_L13
    jmp    MJ_L14

    # while loop body
MJ_L13:

    #### if statement

    # True/1 expression
    ldi    r22, 1
    # push one byte expression onto stack
    push   r22

    # load condition and branch if false
    # load a one byte expression off stack
    pop    r24
    #load zero into reg
    ldi    r25, 0

    #use cp to set SREG
    cp     r24, r25
    #WANT breq MJ_L15
    brne   MJ_L16
    jmp    MJ_L15

    # then label for if
MJ_L16:
    jmp    MJ_L17

    # else label for if
MJ_L15:

    # done label for if
MJ_L17:

    # jump to while test
    jmp    MJ_L12

    # end of while
MJ_L14:

    # jump to while test
    jmp    MJ_L9

    # end of while
MJ_L11:


/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main


