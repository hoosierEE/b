CF=-minline-all-stringops
CF+=-fno-asynchronous-unwind-tables
CF+=-fno-stack-protector
CF+=-Wall
CF+=-Wno-pointer-sign
CF+=-Wno-strict-aliasing
CF+=-Wno-parentheses
CF+=-Wno-unused-function
LF=-s -nostdlib A.S

/bin/b: a.c b.c *.h makefile
	sudo $(CC) -Os -o $@ $(LF) a.c b.c $(CF)

# /bin/k: a.c k.c *.h makefile
# 	sudo $(CC) -Os -o $@ $(LF) a.c k.c $(CF)

# all: /bin/b /bin/k

