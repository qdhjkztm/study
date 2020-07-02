buildBin:
	 nasm hello.asm -o hello.bin
buildImg:
	dd conv=sync if=hello.bin of=hello.img bs=1440k count=1
clean:
	rm -rf *.bin *.img
	
