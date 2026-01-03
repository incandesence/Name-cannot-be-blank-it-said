To run this assembly code , an assembly compiler is required.

Recommended compiler:
NASM (Netwide Assembler)
https://www.nasm.us/

--------------------------------------------------
Installation
--------------------------------------------------

Windows:
Download NASM for Windows from:
https://www.nasm.us/pub/nasm/releasebuilds/

After installation , add NASM to your system PATH.

You will also need the Microsoft Visual C++ Build Tools for linking.
They can be downloaded from:
https://visualstudio.microsoft.com/visual-cpp-build-tools/

Linux:
Install NASM using your distribution's package manager.

Debian / Ubuntu:
sudo apt install nasm

Arch Linux:
sudo pacman -S nasm

Fedora:
sudo dnf install nasm

macOS:
Install NASM using Homebrew:
brew install nasm

--------------------------------------------------
Build Instructions
--------------------------------------------------

The file `main.asm` contains the assembly source code.

Linux / macOS:
nasm -f elf64 main.asm
ld -o main main.o
./main

Windows:
nasm -f win64 main.asm
link main.obj

--------------------------------------------------
Notes
--------------------------------------------------

- Make sure NASM is available in your system PATH.
- On Windows, the `link` command is provided by the Microsoft Visual C++ toolchain.
- You may build the project using the command line or integrate NASM into an IDE such as Visual Studio.

--------------------------------------------------
Enjoy :)
--------------------------------------------------
