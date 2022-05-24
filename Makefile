NAME = test


all: $(NAME)

$(NAME): test.o
	c++ test.cpp
