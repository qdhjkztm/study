CC = gcc
TARGET = main
OBJ = resource/print.o resource/sort.o resource/math_tools.o hello.o
CFLAGS = -I h
RM = rm -f
$(TARGET):$(OBJ)
	$(CC) -g -o $(TARGET) $(OBJ) $(CFLAGS)
$(OBJ):%.o:%.c
	$(CC) -c $(CFLAGS) $< -o $@
clean:
	$(RM) $(TARGET) $(OBJ)
