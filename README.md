## How to start
```console
make
```

see dump file which is named **dump**. This dump file contain dump of elf file which has .my_section on _0x602040_ address.


Also, this project shows how to use objcopy to change address of .my_section. After `make` you can see dump file - **objcopy_dump**. It is dump of objcopy_main and its .my_section is placed to _0x702050_.
