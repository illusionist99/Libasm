# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: malaoui <malaoui@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/13 12:47:38 by malaoui           #+#    #+#              #
#    Updated: 2020/03/14 15:38:28 by malaoui          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_read

_ft_read :
    cmp rdi, 0
    jl  error
    cmp rsi, 0
    je error
    cmp rdx, 0
    jl error
    mov rax, 0x2000003
    syscall
    ret

error :
    mov rax, -1
    ret
