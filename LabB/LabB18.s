		.text
main:	#-------------------
		addi	$v0, $0, 5		# service #5 v0=readInt
		syscall
		add		$t0, $0, $v0	# t0=v0
		addi	$t5, $0, 1
		sll		$t5, $t5, 10
		xor		$t0, $t0, $t5
		add		$a0, $0, $t0
		addi	$v0, $0,  1		# service #1
		syscall					# do print
		#--------------------
fini:	jr		$ra				# return