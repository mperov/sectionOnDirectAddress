main: main.c Makefile
	gcc -c main.c
	gcc main.o --section-start=my_section=0x602040 -o main
	#/usr/lib/gcc/x86_64-linux-gnu/4.6/collect2 --sysroot=/ --section-start=my_section=0x602040 --build-id --no-add-needed \
        #                                     --as-needed --eh-frame-hdr -m elf_x86_64 --hash-style=gnu -dynamic-linker \
        #                                     /lib64/ld-linux-x86-64.so.2 -z relro -o main \
        #                                     /usr/lib/gcc/x86_64-linux-gnu/crt1.o \
        #                                     /usr/lib/gcc/x86_64-linux-gnu/crti.o \
        #                                     /usr/lib/gcc/x86_64-linux-gnu/4.6/crtbegin.o \
        #                                     -L/usr/lib/gcc/x86_64-linux-gnu/4.6 -L/usr/lib/gcc/x86_64-linux-gnu/4.6/../../../x86_64-linux-gnu \
        #                                     -L/usr/lib/gcc/x86_64-linux-gnu/4.6/../../../../lib -L/lib/x86_64-linux-gnu \
        #                                     -L/lib/../lib -L/usr/lib/x86_64-linux-gnu -L/usr/lib/../lib -L/usr/lib/gcc/x86_64-linux-gnu/4.6/../../.. \
        #                                     main.o -lgcc --as-needed -lgcc_s --no-as-needed -lc -lgcc --as-needed -lgcc_s --no-as-needed \
        #                                     /usr/lib/gcc/x86_64-linux-gnu/4.6/crtend.o /usr/lib/gcc/x86_64-linux-gnu/4.6/../../../x86_64-linux-gnu/crtn.o
run: main
	./main

clean:
	rm -f *.o main
