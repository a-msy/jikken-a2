#
# regset.s
#
	INITIAL_GP = 0x10008000
	INITIAL_SP = 0x7ffffffc
	.text
init:
	li	$gp, INITIAL_GP # $gp <- 0x10008000 
	li	$sp, INITIAL_SP # $sp <- 0x7ffffffc
	nop
	jal	main
	nop
	li	$v0, 99
	syscall			# halt
	nop
stop:
	j stop
	nop

	.text 	0x00001000
	.globl	main
main:
	addi	$1, $zero, 1
	add	$2, $1, $1
	addi	$3, $2, 1
	add	$4, $2, $2
	add	$5, $2, $3
	sll	$6, $3, 1
	add	$7, $3, $4
	sll	$8, $4, 1
	add	$9, $6, $3
	sll	$10, $2, 3
	addi	$11, $10, 1
	add	$12, $10, $2
	add	$13, $10, $3
	add	$14, $10, $4
	addi	$15, $10, 5
	addi	$16, $10, 6
	addi	$17, $10, 7
	ori	$18, $10, 8
	or	$19, $10, $9
	add	$20, $10, $10
	addi	$21, $20, 1
	ori	$22, $20, 2
	or	$23, $20, $3
	addi	$24, $20, 4
	add	$25, $20, $5
	sllv	$26, $13, $1
	addi	$27, $20, 7
	addi	$28, $27, 1
	addi	$29, $zero, 0x29
	addi	$30, $zero, 0x30
	jr	$ra
	nop

# end	
