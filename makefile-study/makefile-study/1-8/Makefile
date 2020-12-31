.PHONY:all
SRCS ="            player.c    lcd.c usb.c media.c hello.h main.txt 1.c.c.d.o.c "

src_ = $(strip $(SRCS))


OBJS = $(subst .c,.o,$(strip $(SRCS)))
DEPS = $(patsubst %.c,%.d,$(SRCS))
DEPS2 = $(SRCS:.c=.d)
FIND = $(findstring usb2,$(SRCS))
#FILTER = $(filter %.c %.h, $(SRCS))
FILTER = $(filter %.h, $(SRCS))
all:
	@echo "src_ =$(src_)"
	@echo "OBJS =$(OBJS)"	
	@echo "DEPS =$(DEPS)"
	@echo "DEPS2 =$(DEPS2)"
	@echo "FIND =$(FIND)"
	@echo "FILTER =$(FILTER)"



src_ = player.c lcd.c usb.c media.c hello.h main.txt 1.c.c.d.o.c 
OBJS = player.o lcd.o usb.o media.o hello.h main.txt 1.o.o.d.o.o 
DEPS = player.d lcd.d usb.d media.d hello.h main.txt 1.c.c.d.o.d 
DEPS2 = player.d lcd.d usb.d media.d hello.h main.txt 1.c.c.d.o.d 
FIND =
FILTER =hello.h
