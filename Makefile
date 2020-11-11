NAME=ft_hexdump
CC=gcc
FLAGS=-Wall -Werror -Wextra
SRCS=./srcs/main.c \
	 ./srcs/utils.c
HEADERS=./headers/global.h
OBJS=$(SRCS:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJS) $(HEADER)
	$(CC) $(FLAGS) $(OBJS) -o $(NAME)

re:	fclean all

clean:
	rm $(OBJS)

fclean: clean
	rm -f $(NAME)