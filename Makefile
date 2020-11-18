all: clean build

build: main.c factorial.o
	gcc -m32 main.c factorial.o -o factorial -g

factorial.o: factorial.s
	nasm -g -f elf -o factorial.o factorial.s

clean: 
	rm -f *.o *~