outputFilePath=/usr/local/myAll/study/huibian/debug/
OBJ = $(outputFilePath)lesson1.o
TARGET=$(outputFilePath)main
RM = rm -f
$(TARGET):$(OBJ)
	gcc -g -o $@ $<
$(OBJ):$(outputFilePath)%.o:%.asm
	nasm -f elf64 -g $< -o $@
clean:
	rm -f $(TARGET) $(outputFilePath)*.o 
