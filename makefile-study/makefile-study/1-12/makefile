.PHONY:all clean

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)
BIN  = mp3

all: $(BIN) $(DEPS)
	@echo ${DEPS}

ifneq ("$(wildcard $(DEPS))","")
include $(DEPS)
endif

$(BIN):$(OBJS)
	gcc -o $@ $^	

%.d:%.c
	gcc -MM $^ > $@

clean:
	rm -f  $(BIN) $(OBJS) $(DEPS)







TGT = a.out
SUB_DIR = main tst

SUB_TGT = built-in.o

TOP_DIR = $(shell pwd)

HEAD_DIR = $(TOP_DIR)/head

CC = $(CROSS_COMPILE)gcc

CFLAGS = -I$(HEAD_DIR) -Wall

LD = ld

LDFLAGS =

$(TGT): $(SUB_DIR)
	$(CC) $(CFLAGS) 