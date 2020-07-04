outputFilePath=/usr/local/output/os/
buildBin:
	 nasm hello.asm -o $(outputFilePath)hello.bin
buildImg:
	dd conv=sync if=$(outputFilePath)hello.bin of=$(outputFilePath)hello.img bs=1440k count=1
clean:
	rm -rf *.bin *.img
	
