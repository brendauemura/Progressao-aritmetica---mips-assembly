#lab_02_AOC Brenda Uemura 2022

.data
msgem1: .asciiz "Defina o primeiro elemento de uma progressao aritmetica:\n"
msgem2: .asciiz "Defina a razao da progressao a ser calculada: \n"
espaco: .asciiz " "

.text
main:

#primeiro elemento
li $v0, 4
la $a0, msgem1 
syscall
li $v0, 5
syscall
move $t1, $v0

#razao progressao
li $v0, 4
la $a0, msgem2 
syscall
li $v0, 5
syscall
move $t2, $v0

#contador
move $t3, $zero
li $t4, 10

laco:
	beq $t3, $t4, exit
	li $v0, 1
	move $a0, $t1
	syscall
	li $v0, 4
	la $a0, espaco
	syscall
	add $t1, $t1, $t2
	addi $t3, $t3, 1
	j laco

	exit:
	li $v0, 10
	syscall
