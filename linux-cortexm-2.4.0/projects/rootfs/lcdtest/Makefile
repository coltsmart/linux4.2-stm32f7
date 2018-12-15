# Makefile for the LCD test user space program.
all		: apps
clean		: clean_apps

CC = $(CROSS_COMPILE_APPS)gcc
CFLAGS		:= -Os -mcpu=cortex-m3 -mthumb -I$(INSTALL_ROOT)/A2F/root/usr/include
LDFLAGS		:= -mcpu=cortex-m3 -mthumb -L$(INSTALL_ROOT)/A2F/root/usr/lib

# Edit the line below to modify a set of user-space programs
# you need to build
APPS		= lcdtest ts_test
apps		: $(APPS)

ts_test:	ts_test.o fbutils.o font_8x16.o font_8x8.o
	$(CC) $(LDFLAGS) -o $@ $^ -lts
%.o:		%.c
	$(CC) -c $(CFLAGS) -o $@ $^

# Clean-up after user-space programs
clean_apps	:
	-rm -f $(APPS) *.gdb *.o
