#APP_NAME := multi_word_expression_for_proper_nouns example2
APP_NAME := multi_word_expression
APP_NAME1 := multi_word_expression_for_proper_nouns
APP_NAME2 := multi_word_expression_for_prov
APP_NAME3 := multi_word_expression_for_domain
#APP_NAME := multi_word_expression_for_proper_nouns
#APP_NAME := multi_word_expression 
INCLUDE_DIRECTORY := ../ahocorasick
LIBRARY_DIRECTORY := ../ahocorasick/build
LINK_LIBRARY := ahocorasick
BUILD_DIRECTORY := build

ifeq ($(wildcard $(LIBRARY_DIRECTORY)/lib$(LINK_LIBRARY).a),) 
all:;@echo 'Please go to ../ahocorasick directory and complie it first.'
else
all: $(APP_NAME) $(APP_NAME1) $(APP_NAME2) $(APP_NAME3)
endif

$(APP_NAME): mkbuilddir $(APP_NAME).o
	cc -o $(BUILD_DIRECTORY)/$(APP_NAME) $(BUILD_DIRECTORY)/$(APP_NAME).o -l$(LINK_LIBRARY) -L$(LIBRARY_DIRECTORY)

$(APP_NAME).o: $(APP_NAME).c
	cc -o $(BUILD_DIRECTORY)/$(APP_NAME).o -I$(INCLUDE_DIRECTORY) -Wall -c $(APP_NAME).c

$(APP_NAME1): mkbuilddir $(APP_NAME1).o
	cc -o $(BUILD_DIRECTORY)/$(APP_NAME1) $(BUILD_DIRECTORY)/$(APP_NAME1).o -l$(LINK_LIBRARY) -L$(LIBRARY_DIRECTORY)

$(APP_NAME1).o: $(APP_NAME1).c
	cc -o $(BUILD_DIRECTORY)/$(APP_NAME1).o -I$(INCLUDE_DIRECTORY) -Wall -c $(APP_NAME1).c

$(APP_NAME2): mkbuilddir $(APP_NAME2).o
	cc -o $(BUILD_DIRECTORY)/$(APP_NAME2) $(BUILD_DIRECTORY)/$(APP_NAME2).o -l$(LINK_LIBRARY) -L$(LIBRARY_DIRECTORY)

$(APP_NAME2).o: $(APP_NAME2).c
	cc -o $(BUILD_DIRECTORY)/$(APP_NAME2).o -I$(INCLUDE_DIRECTORY) -Wall -c $(APP_NAME2).c

$(APP_NAME3): mkbuilddir $(APP_NAME3).o
	cc -o $(BUILD_DIRECTORY)/$(APP_NAME3) $(BUILD_DIRECTORY)/$(APP_NAME3).o -l$(LINK_LIBRARY) -L$(LIBRARY_DIRECTORY)

$(APP_NAME3).o: $(APP_NAME3).c
	cc -o $(BUILD_DIRECTORY)/$(APP_NAME3).o -I$(INCLUDE_DIRECTORY) -Wall -c $(APP_NAME3).c

mkbuilddir:
	mkdir -p $(BUILD_DIRECTORY)

clean:
	rm -rf $(BUILD_DIRECTORY)
