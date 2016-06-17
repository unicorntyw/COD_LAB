		.text
main:	#-------------------
		addi	$v0, $0, 5		# service #5 v0=readInt
		syscall
		add		$a0, $0, $v0	# t0=v0
		andi	$a0, $a0, 0x400
		beq		$a0, $0, prnt
		addi	$a0, $0, 1
prnt:	addi	$v0, $0,  1		# service #1
		syscall					# do print
		#--------------------
fini:	jr		$ra				# return