outputFilePath=/usr/local/myAll/output/os/
boot.img:boot.bin
	dd conv=sync if=$(outputFilePath)$< of=$(outputFilePath)$@ bs=1440k count=1
boot.bin:boot.asm
	 nasm -f bin $< -o $(outputFilePath)$@	
clean:
	rm -rf $(outputFilePath)*.bin $(outputFilePath)*.img
	
