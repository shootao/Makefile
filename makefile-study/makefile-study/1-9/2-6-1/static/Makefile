.PHONY:clean

libmath.a:libmath.o
	ar rcs $@ $^
libmath.o:libmath.c libmath.h
	gcc -c libmath.c -o libmath.o
clean:
	rm libmath.a libmath.o
