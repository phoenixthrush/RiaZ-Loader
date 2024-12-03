rm -rf bin
mkdir bin

nasm -fbin src/payload.asm -o bin/payload.bin
nasm -fbin src/bootldr.asm -o bin/boot.bin

qemu-system-i386 bin/boot.bin