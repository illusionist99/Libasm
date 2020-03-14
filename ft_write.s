# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: malaoui <malaoui@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/13 12:42:04 by malaoui           #+#    #+#              #
#    Updated: 2020/03/14 15:38:35 by malaoui          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global  _ft_write

_ft_write:
    cmp rdi, 0
    jl  error
    cmp rsi, 0
    je error
    cmp rdx, 0
    jl error
    mov rax, 0x2000004
    syscall
    ret

error :
    mov rax, -1
    ret
