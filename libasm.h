#ifndef LIBASM_H
# define LIBASM_H

# include <string.h>
# include <unistd.h>
# include <fcntl.h>
# include <stdlib.h>
# include <stdio.h>

size_t		ft_strlen(char *str);
size_t		ft_write(int fd, const char *ch, size_t n);
size_t		ft_read(int fd, void *buffer, size_t n);
char		*ft_strcpy(char *dst, const char *scr);
int			ft_strcmp(char *s1, char *s2);
char		*ft_strdup(char *s1);

#endif
