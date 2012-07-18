SHELL = /bin/sh

TARGETS = add_snt_mrkr.out change2mystdformat.out 

all: $(TARGETS)
FLEX = flex
CFLAGS = -g -o
CC = gcc

define run_flex
$(FLEX) $^
$(CC) $(CFLAGS) $@ lex.yy.c -lfl
rm lex.yy.c
endef

add_snt_mrkr.out: add_snt_mrkr.lex
	$(run_flex)

change2mystdformat.out: change2mystdformat.lex
	$(run_flex)

.PHONY: all

clean:
	rm -f $(TARGETS)

