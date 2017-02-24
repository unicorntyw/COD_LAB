		.text
main:	#-------------------
		addi	$v0, $0, 5		# service #5 v0=readInt
		syscall
		add		$t0, $0, $v0	# t0=v0
		add		$t5, $0, 0xffff
		sll		$t5, $t5, 16
		ori		$t5, $t5, 0xfbff
		li		$t6, 1024
		nor		$t6, $t6, $0
		lui		$t7, 0xffff
		ori		$t7, $t7, 0xfbff
		and		$t0, $t0, $t7
		add		$a0, $0, $t0
		addi	$v0, $0,  1		# service #1
		syscall					# do print
		#--------------------
fini:	jr		$ra				# return