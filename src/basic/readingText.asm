.data
	message: .asciiz "Hello, "
	userInput: .space 20
.text
	main:
		
		# Getting user's input text
		li $v0, 8  # prepare the system has to read text from the user
		la $a0, userInput
		li $a1, 20
		syscall
		
		# Displays hello
		li $v0, 4  # Code to display text
		la $a0, message
		syscall
		
		# Displays the name
		li $v0, 4
		la $a0, userInput
		syscall
		
	# Tell the system this is the end of main
	li $v0, 10
	syscall