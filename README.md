To run this assembly code , an assembly compiler is required.

You can download NASM (Netwide Assembler) from:
https://www.nasm.us/

After installing NASM, make sure it is added to your system PATH so it can be accessed from the command line.

The file `main.asm` contains the assembly source code.

Example (Linux / macOS):
nasm -f elf64 main.asm
ld -o main main.o
./main

Example (Windows):
nasm -f win64 main.asm
link main.obj

On Windows, the `link` command is provided by the Microsoft Visual C++ toolchain.

You may use NASM through the command line or integrate it with an IDE such as Visual Studio or other development environments.

Enjoy :)
