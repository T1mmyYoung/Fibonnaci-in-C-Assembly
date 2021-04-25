.globl fibonacci

.text

fibonacci:
	pushq %rbp
	movq %rsp,%rbp
	pushq %rbx
	subq $16,%rsp
	movq %rdi, -16(%rbp)
	cmpq $0,-16(%rbp)
	jne .inside
	jmp .done
	

.inside:##665
	cmpq $1,-16(%rbp)
	jne .end
	jmp .done

.end:##673
	movq -16(%rbp),%rax
	subq $1,%rax
	movq %rax,%rdi
	call fibonacci
	movq %rax,%rbx
	movq -16(%rbp),%rax
	subq $2,%rax
	movq %rax,%rdi
	call fibonacci
	addq %rbx,%rax


.done:#699
	addq $16,%rsp
	popq %rbx
	popq %rbp
	retq
