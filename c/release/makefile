CC = gcc
outputFilePath=/usr/local/output/c/o/
TARGET = /usr/local/output/c/main
OBJ = $(outputFilePath)print.o $(outputFilePath)sort.o $(outputFilePath)math_tools.o $(outputFilePath)hello.o
CFLAGS = -I h
RM = rm -f
$(TARGET):$(OBJ)
	$(CC) -g -o $(TARGET) $(OBJ) $(CFLAGS)
$(OBJ):$(outputFilePath)%.o:./resource/%.c
	$(CC) -c $(CFLAGS) $< -o $@
clean:
	$(RM) $(TARGET) $(OBJ)
