OBJ = lesson2.o
TARGET=main
RM = rm -f
$(TARGET):$(OBJ)
	ld -m elf_i386 $< -o $@
$(OBJ):%.o:%.asm
	nasm -f elf $<
clean:
	rm -f $(TARGET) *.o
