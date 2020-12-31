STR=hello
STR2=hello
STR2+= world!

test1=a
test1?=b
test2?=b


hello=good
time=morning
string=${hello} ${time}
$(info ${string})
time=afternoon
$(info ${string})

all:
	@echo "str=${STR}"
	@echo "str2=${STR2}"
	@echo "test1=${test1}"
	@echo "test2=${test2}"
