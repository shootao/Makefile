.PHONY:clean
hello:main.o
	gcc -o hello main.o -ldll 

main.o:main.c
	gcc -o $@ -c  $^

clean:
	rm -f  main.o hello
