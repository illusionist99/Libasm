# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: malaoui <malaoui@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/13 12:49:15 by malaoui           #+#    #+#              #
#    Updated: 2020/03/13 13:13:02 by malaoui          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global  _ft_strlen

_ft_strlen :
    xor rcx, rcx

loop :
    cmp BYTE [rdi + rcx], 0
    je end
    inc rcx
    call loop

end :
    mov rax, rcx
    ret
