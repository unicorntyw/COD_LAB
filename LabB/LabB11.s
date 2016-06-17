		.text
main:	#-------------------
		#addi	$t0, $0, 60
		#srl	a0, $t0, 1
		addi	$t0, $0, -60
		sra		$a0, $t0, 1
		addi	$v0, $0,  1		# service #1
		syscall					# do print
		addi	$v0, $0, 11		# service #11
		add		$a0, $0, ' '	# printInt
		syscall					# do print
		sll		$a0, $t0, 1
		addi	$v0, $0,  1		# service #1
		syscall
		#--------------------
fini:	jr		$ra				# return