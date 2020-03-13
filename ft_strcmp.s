# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: malaoui <malaoui@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/13 12:41:36 by malaoui           #+#    #+#              #
#    Updated: 2020/03/13 13:13:41 by malaoui          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global  _ft_strcmp

_ft_strcmp :
    mov rax, 0
    mov r10, 0
    mov r11, 0

loop:
    movzx r10, byte [rdi]
    movzx r11, byte [rsi]
    cmp r10, r11
    jne end
    inc rdi
    inc rsi
    jmp loop

end :
    mov rax, r10
    sub rax, r11
    ret
