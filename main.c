#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>

size_t  ft_read(int fd, const void *cbuf, size_t nbyte);
char    *ft_strcpy(char *s1, char *s2);
size_t  ft_write(int fd, const void *buf, size_t nbyte);
int  ft_strlen(char *s);

int     main(void)
{
    char f1[20] = "abc";
    char f2[20];

    //ft_write(9, NULL , 993);
    //strerror(errno);
    printf("%s\n", ft_strcpy(f2, f1));
    //printf("%s\n", ft_strcpy(f1, "dddddddddddd"));
    return (0);
}