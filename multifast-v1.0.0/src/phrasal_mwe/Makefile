PATH_INCLUDE := ../../ahocorasick
PATH_LIBRARY := ../../ahocorasick
ACLIB := ahocorasick

ifeq ($(wildcard $(PATH_LIBRARY)/lib$(ACLIB).a),)
all:;@echo 'Please go to ../ahocorasick directory and complie it first.'
else
all: extract_key_using_multifast extract_key_using_multifast-hi-en extract_key_in_hindi_phrase 

endif

extract_key_using_multifast.o: extract_key_using_multifast.c
	cc -I$(PATH_INCLUDE) -Wall -c extract_key_using_multifast.c
extract_key_using_multifast: extract_key_using_multifast.o
	cc -o extract_key_using_multifast extract_key_using_multifast.o -l$(ACLIB) -L$(PATH_LIBRARY) 

extract_key_using_multifast-hi-en.o: extract_key_using_multifast-hi-en.c
	cc -I$(PATH_INCLUDE) -Wall -c extract_key_using_multifast-hi-en.c
extract_key_using_multifast-hi-en: extract_key_using_multifast-hi-en.o
	cc -o extract_key_using_multifast-hi-en extract_key_using_multifast-hi-en.o -l$(ACLIB) -L$(PATH_LIBRARY) 

#extract_key_using_multifast-hi-en-hi.o: extract_key_using_multifast-hi-en-hi.c
#	cc -I$(PATH_INCLUDE) -Wall -c extract_key_using_multifast-hi-en-hi.c
#extract_key_using_multifast-hi-en-hi: extract_key_using_multifast-hi-en-hi.o
#	cc -o extract_key_using_multifast-hi-en-hi extract_key_using_multifast-hi-en-hi.o -l$(ACLIB) -L$(PATH_LIBRARY) 

extract_key_in_hindi_phrase.o: extract_key_in_hindi_phrase.c
	cc -I$(PATH_INCLUDE) -Wall -c extract_key_in_hindi_phrase.c
extract_key_in_hindi_phrase: extract_key_in_hindi_phrase.o
	cc -o extract_key_in_hindi_phrase extract_key_in_hindi_phrase.o -l$(ACLIB) -L$(PATH_LIBRARY)

clean:
	rm -rf extract_key_using_multifast.o extract_key_using_multifast extract_key_using_multifast-hi-en extract_key_using_multifast-hi-en.o extract_key_using_multifast-hi-en-hi extract_key_using_multifast-hi-en-hi.o extract_key_in_hindi_phrase.o extract_key_in_hindi_phrase  
