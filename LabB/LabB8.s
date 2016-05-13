		.globl fini
		.text
main:	#--------------------
		addi	$v0, $0,  5		# service #5
		add		$a0, $0,  $0
loop:	slti	$t9, $a0, 5
		beq		$t9, $0,  fini
		syscall
		addi	$a0, $a0, 1
		j		loop
		#--------------------
fini:	jr		$ra				# return
