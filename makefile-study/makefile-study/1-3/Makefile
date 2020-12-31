
.PONHY:clean all

obj = led.o player.o

ifeq ($(DEBUG),"true")
CC = gcc -g
else
CC = gcc
endif

all:test

all:test1

all:test2

hello:$(obj)
	$(CC) -o hello lcd.o player.o

%.o:%.c
	$(CC) -c $^ -o $@
	@echo "1"


clean:
	rm -f lcd.o hello player.o

test:test3 test4
	@echo "hhhhh....$<"


test4:

test3:

test1 test2:
	@echo "$@"   #$@ 代表目标
