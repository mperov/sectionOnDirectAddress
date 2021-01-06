main: main.c Makefile
	gcc -O0 main.c -Wl,--section-start=.my_section=0x602040 -o main
	objcopy --change-section-address .my_section=0x702050 main objcopy_main
	objdump -D main > dump
	objdump -D objcopy_main > objcopy_dump

run: main
	./main

clean:
	rm -f *.o main objcopy_main
