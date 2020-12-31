.PHONY: clean

hello:$(patsubst(%.c,%.o,$(wildcard *.c)))
	gcc -o  $@ $^
clean:
	rm *.o hello
