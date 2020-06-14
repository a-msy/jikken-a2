#
# sum10.s
#
	INITIAL_GP = 0x10008000
	INITIAL_SP = 0x7ffffffc
	.text
init:
	li	$gp, INITIAL_GP
	li	$sp, INITIAL_SP
	nop
	jal	main
	nop
	li	$v0, 99
	syscall
	nop
stop:
	j stop
	nop

	.text 	0x00001000
	.globl	main
main:
	addi	$sp, $sp, -32
	sw	$ra, 20($sp)
	sw	$fp, 16($sp)
	addiu	$fp, $sp, 28
	ori	$a0, $a0, 10
	jal	sum
	nop
	add	$a1, $zero, $v0
	lw	$ra, 20($sp)
	lw	$fp, 16($sp)
	addiu	$sp, $sp, 32
	jr	$ra
	nop

sum:	
	addi	$sp, $sp, -32
	sw	$ra, 20($sp)
	sw	$fp, 16($sp)
	addiu	$fp, $sp, 28
	sw	$a0, 0($fp)
	lw	$v0, 0($fp)
	nop
	slt	$t0, $zero, $v0
	bne	$t0, $zero, $L2
	nop
#	ori	$v0, $v0, 1
	ori	$v0, $zero, 0
	j	$L1
	nop
$L2:
	lw	$v1, 0($fp)
	nop
	addi	$v0, $v1, -1
	add	$a0, $zero, $v0
	jal	sum
	nop
	lw	$v1, 0($fp)
	nop
#	mul	$v0, $v0, $v1
	add	$v0, $v0, $v1

$L1:
	lw	$ra, 20($sp)
	lw	$fp, 16($sp)
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	
# End of file (sum10.s)
