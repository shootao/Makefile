# Description: make 如何生成当前目录下的子目录build-in.o
TGT = main

SUB_DIR = main tst
SUB_TGT = build-in.o

export TOP_DIR=$(shell pwd)
export  HEAD_DIR = $(TOP_DIR)/HEAD_DIR

CROSS_COMPILER = arm-linux-
export CC = $(CROSS_COMPILER)gcc

export CFLAGS = -I$(HEAD_DIR) -Wall

LD = ld

LDFLAGS = 

$(TGT): $(SUB_DIR)
	$(CC) $(CFLAGS) $(^:=/$(SUB_DIR))

$(SUB_DIR):
	make -C $@

.PHONY: clean $(SUB_DIR)

clean:
	rm -vf $(TGT)
	for dir in $(SUB_DIR); 	do \
		make -C $$dir clean \
	done















