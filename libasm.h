#ifndef LIBASM_H
# define LIBASM_H

# include <unistd.h>
# include <stdio.h>
# include <string.h>
# include <stdlib.h>

ssize_t     ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t     ft_read(int fildes, void *buf, size_t nbyte);
size_t      ft_strlen(const char *s);
char *      ft_strcpy(char * dst, const char * src);
int         ft_strcmp(const char *s1, const char *s2);
char *      ft_strdup(const char *s1);
#endif