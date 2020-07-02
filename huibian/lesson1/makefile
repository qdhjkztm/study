OBJ = lesson1.o
TARGET=main
RM = rm -f
$(TARGET):$(OBJ)
	gcc -g -o $@ $<
$(OBJ):%.o:%.asm
	nasm -f elf64 -g $<
clean:
	rm -f $(TARGET) *.o
