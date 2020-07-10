outputFilePath=/usr/local/myAll/output/huibian/
OBJ = $(outputFilePath)lesson4.o
TARGET=$(outputFilePath)main
RM = rm -f
$(TARGET):$(OBJ)
	ld -m elf_i386 $< -o $@
$(OBJ):$(outputFilePath)%.o:%.asm
	nasm -f elf $<
clean:
	rm -f $(TARGET) *.o
