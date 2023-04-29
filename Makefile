# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lxuxer <rdelicad@student.42.com>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/08 13:03:20 by adiaz-lo          #+#    #+#              #
#    Updated: 2023/04/29 19:50:48 by lxuxer           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libft.a

SRCS_MAND	=	ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isprint.c\
			ft_isdigit.c ft_memchr.c ft_memcpy.c ft_memset.c\
			ft_strchr.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c\
			ft_strrchr.c ft_tolower.c ft_toupper.c ft_memcmp.c ft_strnstr.c\
			ft_strmapi.c


OBJS_MAND	= ${SRCS_MAND:.c=.o}

OBJS_BON	= ${SRCS_BON:.c=.o}

CC		= cc

RM		= rm -rf

AR		= ar rcs

RANLIB		= ranlib

CFLAGS += -Wall -Werror -Wextra -g

LFLAGS += -I.

all	:	$(NAME)
		@echo Compiling Library "libft.a" File "Only Mandatory Part": $@ ...

$(NAME)	:	$(OBJS_MAND)
		@echo Compiling Library File: $@ ...
		$(AR) $(NAME) $(OBJS_MAND)
		$(RANLIB) $(NAME)

%.o:	%.c
		@echo Compiling Binary Files: $@ ...
		$(CC) $(CFLAGS) -c $< -o $@ $(LFLAGS)

bonus	:	$(OBJS_MAND) $(OBJS_BON) libft.h
		$(AR) $(NAME) $(OBJS_BON) $(OBJS_MAND)
		@echo Compiling Library "libft.a" File "Mandatory + Bonus Part": $@ ...

clean	:	
		@echo Cleaning The .o Generated Files: $@ ...
		$(RM) ${OBJS_MAND} ${OBJS_BON}


fclean	:	clean
		@echo Cleaning All ".o & libft.a" Generated Files:
		$(RM) $(NAME)

re	:	fclean all
		@echo Cleaning All ".o & libft.a" Generated Files And Remake Everything:


.PHONY:		all clean fclean re bonus
