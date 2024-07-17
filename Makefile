# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anilchen <anilchen@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/26 12:34:32 by anilchen          #+#    #+#              #
#    Updated: 2024/07/16 12:46:32 by anilchen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror -I$(LIBFT_DIR)
AR = ar
ARFLAGS = rcs
LIBFT_DIR = libft
LIBFT_NAME = $(LIBFT_DIR)/libft.a
SRCS = $(wildcard *.c)
OBJ = $(SRCS:.c=.o)

all: $(LIBFT_NAME) $(NAME)

$(LIBFT_NAME):
		$(MAKE) -C $(LIBFT_DIR)

$(NAME): $(OBJ) 
			@cp libft/libft.a .
			@mv libft.a $(NAME)
			@$(AR) $(ARFLAGS) $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean: 
		rm -f $(OBJ)
		$(MAKE) -C $(LIBFT_DIR) clean
		
fclean: clean
		rm -f $(NAME)
		$(MAKE) -C $(LIBFT_DIR) fclean
		
re: fclean all

.PHONY: all clean fclean re