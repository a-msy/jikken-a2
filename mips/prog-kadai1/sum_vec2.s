#
# sum_vec2.s
#	(revised on 2020-05-02)
#
	INITIAL_GP = 0x10008000		# initial value of global pointer
	INITIAL_SP = 0x7ffffffc		# initial value of stack pointer
	# system call service number
	stop_service = 99

	.text				# テキストセグメントの開始
init:
	# initialize $gp (global pointer) and $sp (stack pointer)
	la	$gp, INITIAL_GP			# $gp <-- 0x10008000 (INITIAL_GP)
	la	$sp, INITIAL_SP			# $sp <-- 0x7ffffffc (INITIAL_SP)
	jal	main					# jump to `main'
	nop							# (delay slot)
	li	$v0, stop_service		# $v0 <-- 99 (stop_service)
	syscall						# stop
	nop
	# not reach here
stop:							# if syscall return 
	j 	stop					# infinite loop...
	nop							# (delay slot)
 
	.text 	0x00001000			# 以降のコードを0x00001000から配置
main:
	sw	$ra, 0($sp)				# $ra の値をスタックに保存
	lw	$a0, 0xc004($gp)		# $a0 <-- mem[0x10004004]
								# データの先頭アドレス
	lw	$a1, 0xc008($gp)		# $a1 <-- mem[0x10004008]
                                # データの個数 (n)
	jal	sum_vec					# sum_vec を呼び出す
	nop
	sw	$v0, 0xc000($gp)		# mem[0x10004000] <-- $v0
                                # 結果を0x10004000番地に格納
	lw	$ra, 0($sp)				# $ra の値をスタックから復元
	nop
	jr	$ra						# リターン
	nop

	.text	0x00002000
sum_vec:	
	addu	$t0,$a0,$zero	# データの先頭アドレスの値
	addu	$t1,$a1,$zero	# 個数の値
	addi	$t2,$t2,0		#計算結果

LOOP:
	beq		$t1, $zero,EXIT	#if $t1 == 0 jump to EXIT
	nop
	lw		$t3,0($t0)		#値を取ってくる
	nop
	addi	$t0, $t0, 4 	#アドレス加算
	addi	$t1, $t1, -1	#個数を１個引く
	add		$t2, $t2,$t3	#値の足し算
	j		LOOP				# jump to LOOP
	nop
	
EXIT:
	addu	$v0,$t2,$zero
	jr	$ra
	nop				# (delay slot)

	#
	# data segment
	#
	.data	0x10004000              # データセグメントの開始
RESULT:	.word	0xffffffff              # ここに計算結果を格納する
BASE:	.word	0x10004100	# 加算するデータが格納されいる先頭アドレス
N:	.word	5               	# n の初期値
	.data	0x10004100
	.word	1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	
# End of file (sum_vec2.s)
