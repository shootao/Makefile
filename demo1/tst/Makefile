SRCS = tst.c
SUB_DIR = foo

 #如何生成当前目录下的子目录(是有当前目录下的.c生成的.o和当前目录下的子目录临时打包生成的)
$(SUB_TGT): $(SRCS:.c=.o) $(SUB_DIR)
	$(LD) $(LDFLAGS) $(SRCS:.c=.o) $(SUB_DIR:=/$(SUB_DIR)) -r -o $@

%.o: %.c
	$(CC) $(CFLAGS) $< -c

%.d: %.c
	$(CC) $(CFLAGS) $< -MM > $@.$$$$;\
	set `s/%*//`
	# $(CC) $(CFLAGS) $< -MM > $@

sinclude $(SRCS:.c=.d)

$(SUB_DIR):
	make -C $@

.PHONY: clean $(SUB_DIR)

clean:
	rm -vf $(SUB_TGT) $(SRCS:.c=.0) $(SRCS:.c=.d)
	for dir in $(SUB_DIR); do \
		make -C $$dir clean; \
	done