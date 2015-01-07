PATH_INCLUDE := ../ahocorasick
PATH_LIBRARY := ../ahocorasick
ACLIB := ahocorasick

ifeq ($(wildcard $(PATH_LIBRARY)/lib$(ACLIB).a),) 
all:;@echo 'Please go to ../ahocorasick directory and complie it first.'
else
all: multi_word_expression multi_word_expression_for_proper_nouns multi_word_expression_for_domain multi_word_expression_for_prov 

endif

multi_word_expression: multi_word_expression.o
	cc -o multi_word_expression multi_word_expression.o -l$(ACLIB) -L$(PATH_LIBRARY)
 
multi_word_expression.o: multi_word_expression.c
	cc -I$(PATH_INCLUDE) -Wall -c multi_word_expression.c 

multi_word_expression_for_proper_nouns: multi_word_expression_for_proper_nouns.o
	cc -o multi_word_expression_for_proper_nouns multi_word_expression_for_proper_nouns.o -l$(ACLIB) -L$(PATH_LIBRARY)  

multi_word_expression_for_proper_nouns.o: multi_word_expression_for_proper_nouns.c
	cc -I$(PATH_INCLUDE) -Wall -c multi_word_expression_for_proper_nouns.c

multi_word_expression_for_domain: multi_word_expression_for_domain.o
	cc -o multi_word_expression_for_domain multi_word_expression_for_domain.o -l$(ACLIB) -L$(PATH_LIBRARY) 

multi_word_expression_for_domain.o: multi_word_expression_for_domain.c
	cc -I$(PATH_INCLUDE) -Wall -c multi_word_expression_for_domain.c

multi_word_expression_for_prov: multi_word_expression_for_prov.o
	cc -o multi_word_expression_for_prov multi_word_expression_for_prov.o -l$(ACLIB) -L$(PATH_LIBRARY) 
	
multi_word_expression_for_prov.o: multi_word_expression_for_prov.c
	cc -I$(PATH_INCLUDE) -Wall -c multi_word_expression_for_prov.c

clean:
	rm -rf multi_word_expression.o multi_word_expression multi_word_expression_for_proper_nouns.o multi_word_expression_for_proper_nouns multi_word_expression_for_prov multi_word_expression_for_prov.o 
