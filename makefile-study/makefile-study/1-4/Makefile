
.PONHY:clean all

ifeq ($(DEBUG),"true")
CC = gcc -g
else
CC = gcc
endif

BIN=hello
OBJS=lcd.o player.o
N=1

player.o:N=2
${BIN}:${OBJS}
	$(CC) -o ${BIN} ${OBJS}

%.o:%.c
	$(CC) -c $^ -o $@
	@echo ${N}


clean:
	rm -f lcd.o hello player.o

