CC = gcc

FLAGS = -Wall -Wextra -Werror

NAME = ft_printf.a

SRC = ft_printf.c \
		ft_printf_utils.c

OBJ = ${SRC:.c=.o}

all : $(NAME)

$(NAME) : $(OBJ)
	ar rcs $(NAME) $(OBJ)

%.o : %.c ft_printf.h
	$(CC) $(FLAGS) -o $@ -c $<

clean : 
	rm -rf $(OBJ)

fclean : clean
	rm -rf $(NAME)

re : fclean all
