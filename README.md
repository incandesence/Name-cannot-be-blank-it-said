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

Building the Bootloader
To assemble the bootloader code, follow these steps:

Save the provided code in a file called bootloader.asm.

Open a terminal or command prompt.

Navigate to the directory where the bootloader.asm file is located.

Run the following command to assemble the code:

nasm -f bin bootloader.asm -o bootloader.bin
This command will use NASM to assemble the code into a binary file called bootloader.bin.

Running the Bootloader
Once you have the bootloader.bin file, you can run it using an emulator or write it to the first sector of a bootable disk.

Running with an Emulator
You can use an x86 emulator, such as QEMU, to run the bootloader. Follow these steps:

Install QEMU on your system if you haven't already. You can download QEMU from the official website: https://www.qemu.org/

Open a terminal or command prompt.

Navigate to the directory where the bootloader.bin file is located.

Run the following command to start the emulator and execute the bootloader:

qemu-system-x86_64 -drive format=raw,file=bootloader.bin
This command will launch the emulator and load the bootloader.bin file as the bootable disk.

Writing to a Bootable Disk
If you want to run the bootloader on real hardware, you can write the bootloader.bin file to the first sector of a bootable disk, such as a USB drive. Be cautious when performing disk operations, as it can erase or damage existing data.

Important: Writing to a disk will erase its contents. Make sure to back up any important data before proceeding.

Follow these steps to write the bootloader to a bootable disk:

Insert a blank bootable disk, such as a USB drive, into your computer.

Open a terminal or command prompt.

Identify the device name of the bootable disk. On Linux, you can use the lsblk command or the fdisk -l command to list available disks. On Windows, you can use the diskpart utility or third-party tools like Rufus.

Make sure you have the correct device name and double-check that it is the desired bootable disk.

Run the following command to write the bootloader to the bootable disk (replace /dev/sdx with the correct device name):

dd if=bootloader.bin of=/dev/sdx bs=512 count=1
This command will use the dd utility to write the bootloader.bin file to the first sector of the bootable disk.

Note: Be extremely careful to specify the correct device name to avoid accidentally overwriting important data.
--------------------------------------------------
Notes
--------------------------------------------------

- Make sure NASM is available in your system PATH.
- On Windows, the `link` command is provided by the Microsoft Visual C++ toolchain.
- You may build the project using the command line or integrate NASM into an IDE such as Visual Studio.

--------------------------------------------------
Enjoy :)
--------------------------------------------------
