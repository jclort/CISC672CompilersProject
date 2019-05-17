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


    #### if statement

    # Load constant int 3
    ldi    r24,lo8(3)
    ldi    r25,hi8(3)
    # push two byte expression onto stack
    push   r25
    push   r24

    # Load constant int 5
    ldi    r24,lo8(5)
    ldi    r25,hi8(5)
    # push two byte expression onto stack
    push   r25
    push   r24

    # less than expression
    # load a two byte expression off stack
    pop    r18
    pop    r19
    # load a two byte expression off stack
    pop    r24
    pop    r25
    cp    r24, r18
    cpc   r25, r19
    brlt MJ_L4

    # load false
MJ_L3:
    ldi     r24, 0
    jmp      MJ_L5

    # load true
MJ_L4:
    ldi    r24, 1

    # push result of less than
MJ_L5:
    # push one byte expression onto stack
    push   r24

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
    jmp    MJ_L2

    # else label for if
MJ_L0:

    # done label for if
MJ_L2:


/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main



    .text
.global Functions_blue
    .type  Functions_blue, @function
Functions_blue:
    push   r29
    push   r28
    # make space for locals and params
    ldi    r30, 0
    push   r30
    push   r30

    # Copy stack pointer to frame pointer
    in     r28,__SP_L__
    in     r29,__SP_H__

    # save off parameters
    std    Y + 2, r25
    std    Y + 1, r24
/* done with function Functions_blue prologue */


    # Color expression Meggy.Color.BLUE
    ldi    r22,5
    # push one byte expression onto stack
    push   r22

/* epilogue start for Functions_blue */
    # handle return value
    # load a one byte expression off stack
    pop    r24
    # promoting a byte to an int
    tst     r24
    brlt     MJ_L6
    ldi    r25, 0
    jmp    MJ_L7
MJ_L6:
    ldi    r25, hi8(-1)
MJ_L7:
    # pop space off stack for parameters and locals
    pop    r30
    pop    r30
    # restoring the frame pointer
    pop    r28
    pop    r29
    ret
    .size Functions_blue, .-Functions_blue


    .text
.global Functions_B
    .type  Functions_B, @function
Functions_B:
    push   r29
    push   r28
    # make space for locals and params
    ldi    r30, 0
    push   r30
    push   r30

    # Copy stack pointer to frame pointer
    in     r28,__SP_L__
    in     r29,__SP_H__

    # save off parameters
    std    Y + 2, r25
    std    Y + 1, r24
/* done with function Functions_B prologue */


/* epilogue start for Functions_B */
    # handle return value
    # load a one byte expression off stack
    pop    r24
    # promoting a byte to an int
    tst     r24
    brlt     MJ_L8
    ldi    r25, 0
    jmp    MJ_L9
MJ_L8:
    ldi    r25, hi8(-1)
MJ_L9:
    # pop space off stack for parameters and locals
    pop    r30
    pop    r30
    # restoring the frame pointer
    pop    r28
    pop    r29
    ret
    .size Functions_B, .-Functions_B


    .text
.global Functions_b3
    .type  Functions_b3, @function
Functions_b3:
    push   r29
    push   r28
    # make space for locals and params
    ldi    r30, 0
    push   r30
    push   r30

    # Copy stack pointer to frame pointer
    in     r28,__SP_L__
    in     r29,__SP_H__

    # save off parameters
    std    Y + 2, r25
    std    Y + 1, r24
/* done with function Functions_b3 prologue */


    # Push Meggy.Tone.B3 onto the stack.
    ldi    r25, hi8(32397)
    ldi    r24, lo8(32397)
    # push two byte expression onto stack
    push   r25
    push   r24

/* epilogue start for Functions_b3 */
    # handle return value
    # load a two byte expression off stack
    pop    r24
    pop    r25
    # pop space off stack for parameters and locals
    pop    r30
    pop    r30
    # restoring the frame pointer
    pop    r28
    pop    r29
    ret
    .size Functions_b3, .-Functions_b3

