section     .text
global      _ft_strlen

_ft_strlen:
    xor		rax, rax
	xor		rcx, rcx
	cmp		BYTE [rdi], 0
	je		return
	call 	l1
	ret

l1:
	cmp		BYTE [rdi + rcx], 0
	je		return
	inc 	rcx
	call 	l1

return:
	mov rax, rcx
	ret
