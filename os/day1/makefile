outputFilePath=/usr/local/output/os/
buildBin:
	 nasm boot.asm -o $(outputFilePath)boot.bin
buildImg:
	dd conv=sync if=$(outputFilePath)boot.bin of=$(outputFilePath)boot.img bs=1440k count=1
clean:
	rm -rf *.bin *.img
	
