NAME = test

all: $(NAME)

$(NAME): test.cpp
	c++ test.cpp
