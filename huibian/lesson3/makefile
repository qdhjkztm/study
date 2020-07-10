outputFilePath=/usr/local/myAll/output/huibian/
OBJ = $(outputFilePath)lesson3.o
TARGET=$(outputFilePath)main
RM = rm -f
$(TARGET):$(OBJ)
	gcc -g -o $@ $<
$(OBJ):$(outputFilePath)%.o:%.asm
	nasm -f elf64 -g $<
clean:
	rm -f $(TARGET) *.o
