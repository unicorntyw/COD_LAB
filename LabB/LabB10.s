		.text
main:	#-------------------
		addi	$t0, $0, 60
		addi	$t1, $0, 7
		div		$t0, $t1
		addi	$v0, $0, 1		# service #1
		mflo	$a0
		syscall					# do print
		addi	$v0, $0, 11		# service #11
		add		$a0, $0, ' '	# printInt
		syscall					# do print
		addi	$v0, $0, 1		# service #1
		mfhi	$a0
		syscall
		#--------------------
fini:	jr		$ra				# return