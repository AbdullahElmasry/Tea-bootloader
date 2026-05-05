BOOT=boot.bin

all: $(BOOT)

$(BOOT): boot.asm
	nasm -f bin boot.asm -o $(BOOT)

run: $(BOOT)
	qemu-system-i386 -drive file=$(BOOT),format=raw,if=floppy

clean:
	rm -f $(BOOT)