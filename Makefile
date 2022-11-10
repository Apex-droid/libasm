
NASM = nasm -f macho64

TESTER = mlibasm_tester

NAME = libasm.a 

SRC = ft_read.s \
		ft_strcmp.s \
		ft_strcpy.s \
		ft_strdup.s \
		ft_strlen.s \
		ft_write.s

OBJ = $(SRC:.s=.o)

%.o: %.s
	$(NASM) $< -o $@

.PHONY: all
all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

.PHONY: clean
clean:
	rm -rf $(OBJ)

.PHONY: fclean
fclean: clean
	rm -rf $(NAME)

.PHONY: re
re: fclean all

