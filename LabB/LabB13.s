		.text
main:	#-------------------
		addi	$v0, $0, 5		# service #5 v0=readInt
		syscall
		add		$t0, $0, $v0	# t0=v0
		sll		$a0, $t0, 21
		srl		$a0, $a0, 31
		addi	$v0, $0,  1		# service #1
		syscall					# do print
		#--------------------
fini:	jr		$ra				# return