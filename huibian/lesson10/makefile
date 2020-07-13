outputFilePath=/usr/local/myAll/output/huibian/
OBJ = $(outputFilePath)lesson10.o
TARGET=$(outputFilePath)main
RM = rm -f
$(TARGET):$(OBJ)
	ld -m elf_i386 $< -o $@
$(OBJ):$(outputFilePath)%.o:./%.asm
	nasm -f elf -g $< -o $@
clean:
	rm -f $(TARGET) *.o
