# Makefile for gbm wrapper

CC=$(CROSS_PREFIX)gcc
STRIP=$(CROSS_PREFIX)strip
CCFLAGS=-O2 -pipe -Wall -Werror -fPIC \
		`pkg-config --cflags libdrm`
LDFLAGS=-shared \
		-L$(LIBDIR) -lmali-midgard-t86x-r14p0-gbm

SRCDIR=src
LIBDIR=lib
TARGET=$(LIBDIR)/libgbm.so.1.0.0

.PHONY: all clean

all : $(TARGET)

clean :
	$(RM) -f $(TARGET)

$(TARGET) : $(SRCDIR)/gbm-wrapper.c
	$(CC) $(CCFLAGS) $(LDFLAGS) -o $@ $^
	$(STRIP) $@
