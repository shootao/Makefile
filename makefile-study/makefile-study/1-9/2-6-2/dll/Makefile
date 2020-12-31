.PHONY:clean
libdll.so:dll.o
	gcc -o $@ -shared $^
dll.o:dll.c dll.h 
	gcc -o $@ -fPIC -c $<
clean:
	rm libdll.so dll.o
