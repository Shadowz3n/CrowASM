# Assembly
Assembly Lib

# Install NASM
sudo apt-get install nasm


nasm -f elf crow.asm && ld -m elf_i386 crow.o -o crow
