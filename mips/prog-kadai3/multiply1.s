#
# (multiply1.s)
#	
        INITIAL_GP = 0x10008000
        INITIAL_SP = 0x7ffffffc
        # system call service number
        stop_service = 99

        .text
init:
        # initialize $gp (global pointer) and $sp (stack pointer)
        la      $gp, INITIAL_GP         # $gp <- 0x10008000 (INITIAL_GP)
        la      $sp, INITIAL_SP         # $sp <- 0x7ffffffc (INITIAL_SP)
        jal     main                    # jump to `main'
        nop                             #   (delay slot)
        li      $v0, stop_service       # $v0 <- 99 (stop_service)
        syscall                         # halt
        nop
        # not reach here
stop:                                   # if syscall return 
        j stop                          # infinite loop...
        nop


        .text   0x00001000
main:
        sw      $ra, 0($sp)             # save $ra to stack
        li      $a0, 6			# $a0 <-- 6
	li	$a1, 10			# $a1 <-- 10
	jal	multiply		# call multiply routine
	nop				#   (delay slot)
        sw      $v0, 0xc000($gp)        # mem[0x10004000] <- $v0
        sw      $v1, 0xc004($gp)        # mem[0x10004004] <- $v1
	add	$s0, $v0, $zero
	add	$s1, $v1, $zero
        lw      $ra, 0($sp)             # restore $ra to stack
        nop                             #   (delay slot)
        jr      $ra                     # return from `main'
        nop                             #   (delay slot)
	
multiply:
	addu    $t0, $a0, $zero          # $t0 <= $a0 <= 6 <=かけられる数
	addu    $t1, $a1, $zero          # $t1 <= $a1 <= 10 <=かける数
        addi    $t2, $zero, 32           # 32bit
        li      $v0, 0                   # return 
        li      $v1, 0
#for (式1; 条件式; 式2) 文　今回は無限ループ
FOR_1:	
 IF_1:
        andi    $t3, $t1,1              # if(a1 & 1) a1 の最下位ビットが 1 か？ 論理演算なので最下位を判定可能
        beq     $t3, $zero, ELSE_1      #0なら飛ばす
        nop
        addu    $v0,$v0,$t0             #v0 に a0 を足し込む
 ELSE_1:
                                        #結果の上位ワードの最下位ビットを結果の下位ワードの最上位ビットとする
        sll     $t4, $v0, 31            #v0を31ビットシフトした値をt4に
        addu    $v1, $v1,$t4            #v1へ足す

        srl     $v0, $v0,1              #v0を右シフト

 IF_2:                                   #forループ終了かどうか
        addi    $t2,$t2,-1              # --t2 ループカウンタをへらす
        beq     $t2,$zero,ENDFOR_1    
        nop
 ELSE_2:
        srl     $v1,$v1,1               # v1 を右シフト
        srl     $t1,$t1,1               # a1を右シフト
 	j       FOR_1                 # forloop終わり
 	nop
ENDFOR_1:	
        addu    $s0,$v0,$zero           # 結果（上位ワード）をメモリに格納 34,35行目を参考
        addu    $s1,$v1,$zero
	jr	$ra			# return
	nop				#   (delay slot)
# END multiply

# End of file (multiply1.s)
#if (条件式) 文
# 	(条件式に対応するコード列，条件式の結果は$v0に格納）
# 	beq    $v0, $zero, L_ENDIF_001
# 	(文に対応するコード列）
# L_ENDIF_001:	
#

#for (式1; 条件式; 式2) 文
#
# 	（式1に対応するコード列）
# L_FORLOOP_001:	
# 	（条件式に対応するコード列，条件式の結果は$v0に格納）
# 	beq    $v0, $zero, L_ENDFOR_001
# 	nop
# 	（文に対応するコード列）
# 	（式2に対応するコード列）
# 	j        L_FORLOOP_001
# 	nop
#L_ENDFOR_001:	