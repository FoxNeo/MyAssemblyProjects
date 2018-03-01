.data

.text
	addi $t0, $zero, 30
	addi $t1, $zero, 6
	
	div $t0, $t1
	
	mflo $s0  # Quotinet
	mfhi $s1  # Remander
	
	#print it!
	li $v0, 1
	add $a0, $zero, $s0
	syscall