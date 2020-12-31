.PHONY:all clean


SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)
LINK_PKG_NAME=/out
LINK_OBJ_DIR:=${CURRENT_PATH}${LINK_PKG_NAME}

BIN := $(addprefix ${LINK_OBJ_DIR}/,$(BIN))
$(shell mkdir -p $(LINK_OBJ_DIR))

OBJS := $(addprefix $(LINK_OBJ_DIR)/,$(OBJS)) #后面生成.O文件时候会自动放在该文件下
DEPS := $(addprefix $(LINK_OBJ_DIR)/,$(DEPS)) #后面生成.O文件时候会自动放在该文件下

LINK_OBJ = $(wildcard $(LINK_OBJ_DIR)/*.o)
LINK_OBJ +=$(OBJS)     #这行代码是什么意思

all: $(DEPS) $(OBJS) $(BIN)

ifneq ("$(wildcard $(DEPS))","")	
include $(DEPS)
endif

$(BIN):$(LINK_OBJ)
	@echo "start"
	gcc -o $@ $^ 
	
$(LINK_OBJ_DIR)/%.o:%.c          #后面生成.o文件会自动放在该文件下
	gcc -o $@ -c $(filter %.c,$^)

$(LINK_OBJ_DIR)/%.d:%.c
	gcc -MM $^ | sed 's,\(.*\).o[ :]*,$(LINK_OBJ_DIR)/\1.o:,g' > $@
clean:
	rm -f  $(BIN) $(OBJS) $(DEPS)
