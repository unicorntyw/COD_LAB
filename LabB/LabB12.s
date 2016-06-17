		.text
main:	#-------------------
		addi	$v0, $0, 5		# service #5 v0=readInt
		syscall
		add		$t0, $0, $v0	# t0=v0
		sll		$t1, $t0, 4
		sll		$t2, $t0, 1
		addi	$v0, $0,  1		# service #1
		add		$a0, $t1, $t2
		syscall					# do print
		#--------------------
fini:	jr		$ra				# return