.section .text.entry
    .type _entry, @function
    .global _entry
_entry:
    .option push
    .option norelax
    la a0, _data_start
    la a1, _data_lma
    la a2, _data_size
    call memcpy
    .option pop
    j _start


    .section .text
    .type   _start, @function
    .global _start
_start:

    /* Setup the global pointer, which the ABI assumes points to the
     * __global_pointer$ symbol. */
    .option push
    .option norelax
    la gp, __global_pointer$
    .option pop

    /* Clear the bss segment */
    la      a0, _edata
    la      a2, _end
    sub     a2, a2, a0
    li      a1, 0
    call    memset

    /* Set MTVEC */
    la      t0, _vector_table
    ori     t0, t0, 1
    csrrw   zero, mtvec, t0

    /* Set up the stack pointer */
    la sp,  __stack_top

    /* Call main */
    li      a0, 0
    li      a1, 0
    li      a2, 0
    call    main
    /*call    exit*/

.global __gnat_exit
__gnat_exit:
exit:
    j exit

    .size  _start, .-_start


    /* These don't have to do anything since we use init_array/fini_array. */
    .global _init
    .type   _init, @function
    .global _fini
    .type   _fini, @function
_init:
_fini:
    ret

    .size  _init, .-_init
    .size  _fini, .-_fini

    .section .data
