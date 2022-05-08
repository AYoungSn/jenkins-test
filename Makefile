NAME = test

all: $(NAME)

$(NAME): test.cpp
	cpp test.cpp
