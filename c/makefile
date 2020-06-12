CC = gcc
TARGET = main
OBJ = resource/print.o hello.o
CFLAGS = -I h
RM = rm -f
$(TARGET):$(OBJ)
	$(CC) -o $(TARGET) $(OBJ) $(CFLAGS)
$(OBJ):%.o:%.c
	$(CC) -c $(CFLAGS) $< -o $@
clean:
	$(RM) $(TARGET) $(OBJ)
