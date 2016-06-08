		.globl fini
		.text
main:	#--------------------
		li		$s0	 0
		addi	$v0, $0,  5		# service #5
		syscall					# v0=readInt
		add		$t0, $0,  $v0
		li		$t5,	 0
loop:	slt		$t1, $t5, $t0
		bne		$t1, $0,  addn
		addi	$v0, $0,  1		# service #1
		add		$a0, $0, $s0	# printInt
		syscall					# do print
		jr		$ra				# return
addn:	add		$s0, $s0, $t5
		addi	$t5, 1
		j		loop
