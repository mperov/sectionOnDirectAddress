main: main.c Makefile
	gcc -O0 main.c -Wl,--section-start=.my_section=0x602040 -o main
	objdump -D main > dump

run: main
	./main

clean:
	rm -f *.o main
