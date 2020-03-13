# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: malaoui <malaoui@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/13 13:27:40 by malaoui           #+#    #+#              #
#    Updated: 2020/03/13 13:32:15 by malaoui          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
extern _ft_strlen
extern _ft_strcpy
extern _malloc
global _ft_strdup

_ft_strdup : 
    push rdi
    call _ft_strlen
    inc rax
    mov rdi, rax
    call _malloc
    pop rdi 
    mov rsi, rdi
    mov rdi, rax
    call _ft_strcpy
    ret
