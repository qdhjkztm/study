outputFilePath=/usr/local/myAll/output/huibian/
OBJ = $(outputFilePath)lesson1.o
TARGET=$(outputFilePath)main
RM = rm -f
$(TARGET):$(OBJ)
	gcc -g -o $@ $<
$(OBJ):$(outputFilePath)%.o:%.asm
	nasm -f elf -g $< -o $@
clean:
	rm -f $(TARGET) $(outputFilePath)*.o 
