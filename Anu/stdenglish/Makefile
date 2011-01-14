SHELL = /bin/sh

TARGETS = abbr.out abbr1.out join_hard_hyphen.out rm_joined_hard_hyphens.out

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

abbr.out: abbr.lex
	$(run_flex)

abbr1.out: abbr1.lex
	$(run_flex)

join_hard_hyphen.out: join_hard_hyphen.lex
	$(run_flex_gdbm)

rm_joined_hard_hyphens.out: rm_joined_hard_hyphens.lex
	$(run_flex_gdbm)

.PHONY: all

clean:
	rm -f $(TARGETS)
