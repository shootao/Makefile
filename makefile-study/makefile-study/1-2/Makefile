ifeq ($(DEBUG),"true")
CC = gcc -g
else
CC = gcc
endif

hello:lcd.o player.o
	$(CC) -o hello lcd.o player.o

player.o:player.c
	$(CC) -c player.c -o player.o

lcd.o:lcd.c
	$(CC) -c lcd.c -o lcd.o

clean:
	-rm lcd.o hello player.o
