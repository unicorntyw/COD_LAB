		.text
main:	#-------------------
		addi	$t0, $0, 60
		addi	$t1, $0, 7
		mult	$t0, $t1
		addi	$v0, $0, 1		# service #1
		mflo	$a0
		syscall					# do print
		mfhi	$a0
		syscall
		#--------------------
fini:	jr		$ra				# return