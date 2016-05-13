		.globl fini
		.text
main:	#--------------------
		addi	$v0, $0, 5		# service #5 v0=readInt
		syscall
		add		$t0, $0, $v0	# t0=v0
		addi	$t1, $0, 7		# t1=7
		slt		$t3, $t0, $t1	# t3=1 if t0 < t1
		beq		$t3, $0, else	# t3=0
		add		$t2, $t0, $t1	# t2=t0+t1	
		j		exit
		#--------------------
else:	sub		$t2, $t0, $t1	# t2=t0-t1
exit:	addi	$v0, $0, 1		# service #1
		add		$a0, $0, $t2	# printInt
		syscall					# do print
		#--------------------
fini:	jr		$ra				# return
