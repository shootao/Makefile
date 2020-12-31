.PHONY: clean

hello:main.o
	gcc -o $@ $^ -L../static -lmath
main.o:main.c
	gcc -o $@ -c $^
clean:
	rm hello main.o
