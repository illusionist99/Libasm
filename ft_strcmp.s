section .text
global _ft_strcmp

next:
	inc rsi
	inc rdi

_ft_strcmp:
	xor r8, r8
	xor r9, r9
	mov r8b, [rdi]
	mov r9b, [rsi]
	cmp r8b, 0
	je end
	cmp r9b, 0
	je end
	cmp r8b, r9b
	je next

end:
	sub r8,r9
	mov rax, r8
	ret
