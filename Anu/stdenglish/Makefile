SHELL = /bin/sh

TARGETS = enclitics.out abbrevations.out honorifics.out

all: $(TARGETS)

FLEX = flex
CC = gcc
CFLAGS = -g -o

define run_flex_gdbm
$(FLEX) $<
$(CC) $(CFLAGS) $@ lex.yy.c -lfl -lgdbm
rm lex.yy.c
endef

define run_flex
$(FLEX) $<
$(CC) $(CFLAGS) $@ lex.yy.c -lfl
rm lex.yy.c
endef

enclitics.out: enclitics.lex
	$(run_flex)

abbrevations.out: abbrevations.lex
	$(run_flex)

honorifics.out: honorifics.lex
	$(run_flex)

.PHONY: all

clean:
	rm -f $(TARGETS)
