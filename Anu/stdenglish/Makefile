SHELL = /bin/sh

TARGETS = enclitics.out standard_abbrevations.out abbrevations.out titles.out insert_period.out replacing-non_ascii_chars-to-ascii_chars.out initialisms.out mapping-symbols.out

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

standard_abbrevations.out: standard_abbrevations.lex
	$(run_flex)

abbrevations.out: abbrevations.lex
	$(run_flex)

titles.out: titles.lex
	$(run_flex)

insert_period.out: insert_period.lex
	$(run_flex)

replacing-non_ascii_chars-to-ascii_chars.out: replacing-non_ascii_chars-to-ascii_chars.lex
	$(run_flex)

initialisms.out: initialisms.lex
	$(run_flex)

mapping-symbols.out: mapping-symbols.lex 
	$(run_flex)   
.PHONY: all

clean:
	rm -f $(TARGETS)
