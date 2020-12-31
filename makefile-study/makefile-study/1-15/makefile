.PHONY:all clean

export CURRENT_PATH:=$(shell pwd)

all:
	make -C lcd
	make -C usb
	make -C media
	make -C app

clean:
	rm -rf ./out
