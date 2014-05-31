PATH_INCLUDE := ../ahocorasick
PATH_LIBRARY := ../ahocorasick
ACLIB := ahocorasick

ifeq ($(wildcard $(PATH_LIBRARY)/lib$(ACLIB).a),) 
all:;@echo 'Please go to ../ahocorasick directory and complie it first.'
else
all: multi_word_expression multi_word_expression_for_proper_nouns multi_word_expression_for_physics multi_word_expression_for_prov extract_key_using_multifast extract_key_using_multifast-hi-en extract_key_using_multifast-hi-en-hi

endif

multi_word_expression: multi_word_expression.o
	cc -o multi_word_expression multi_word_expression.o -l$(ACLIB) -L$(PATH_LIBRARY)
 
multi_word_expression.o: multi_word_expression.c
	cc -I$(PATH_INCLUDE) -Wall -c multi_word_expression.c 

multi_word_expression_for_proper_nouns: multi_word_expression_for_proper_nouns.o
	cc -o multi_word_expression_for_proper_nouns multi_word_expression_for_proper_nouns.o -l$(ACLIB) -L$(PATH_LIBRARY)  

multi_word_expression_for_proper_nouns.o: multi_word_expression_for_proper_nouns.c
	cc -I$(PATH_INCLUDE) -Wall -c multi_word_expression_for_proper_nouns.c

multi_word_expression_for_physics: multi_word_expression_for_physics.o
	cc -o multi_word_expression_for_physics multi_word_expression_for_physics.o -l$(ACLIB) -L$(PATH_LIBRARY) 

multi_word_expression_for_physics.o: multi_word_expression_for_physics.c
	cc -I$(PATH_INCLUDE) -Wall -c multi_word_expression_for_physics.c

multi_word_expression_for_prov: multi_word_expression_for_prov.o
	cc -o multi_word_expression_for_prov multi_word_expression_for_prov.o -l$(ACLIB) -L$(PATH_LIBRARY) 
	
multi_word_expression_for_prov.o: multi_word_expression_for_prov.c
	cc -I$(PATH_INCLUDE) -Wall -c multi_word_expression_for_prov.c

extract_key_using_multifast.o: extract_key_using_multifast.c
	cc -I$(PATH_INCLUDE) -Wall -c extract_key_using_multifast.c
extract_key_using_multifast: extract_key_using_multifast.o
	cc -o extract_key_using_multifast extract_key_using_multifast.o -l$(ACLIB) -L$(PATH_LIBRARY) 

extract_key_using_multifast-hi-en.o: extract_key_using_multifast-hi-en.c
	cc -I$(PATH_INCLUDE) -Wall -c extract_key_using_multifast-hi-en.c
extract_key_using_multifast-hi-en: extract_key_using_multifast-hi-en.o
	cc -o extract_key_using_multifast-hi-en extract_key_using_multifast-hi-en.o -l$(ACLIB) -L$(PATH_LIBRARY) 

extract_key_using_multifast-hi-en-hi.o: extract_key_using_multifast-hi-en-hi.c
	cc -I$(PATH_INCLUDE) -Wall -c extract_key_using_multifast-hi-en-hi.c
extract_key_using_multifast-hi-en-hi: extract_key_using_multifast-hi-en-hi.o
	cc -o extract_key_using_multifast-hi-en-hi extract_key_using_multifast-hi-en-hi.o -l$(ACLIB) -L$(PATH_LIBRARY) 

clean:
	rm -rf multi_word_expression.o multi_word_expression multi_word_expression_for_proper_nouns.o multi_word_expression_for_proper_nouns multi_word_expression_for_physics.o multi_word_expression_for_physics multi_word_expression_for_prov multi_word_expression_for_prov.o extract_key_using_multifast.o extract_key_using_multifast extract_key_using_multifast-hi-en extract_key_using_multifast-hi-en.o extract_key_using_multifast-hi-en-hi extract_key_using_multifast-hi-en-hi.o
