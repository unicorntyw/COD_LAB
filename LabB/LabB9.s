		.globl fini
		.text
main:	#--------------------
		li		$s0	 0
		addi	$v0, $0,  5		# service #5
		syscall
		add		$t0, $0,  $v0
		add		$a0, $0,  $0
loop:	slti	$t9, $a0, 5
		beq		$t9, $0,  fini
		syscall
		addi	$a0, $a0, 1
		j		loop
		#--------------------
fini:	jr		$ra				# return
