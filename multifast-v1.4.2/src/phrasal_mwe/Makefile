APP_NAME := extract_key_using_multifast
APP_NAME1 := extract_key_using_multifast-hi-en
APP_NAME2 := extract_key_in_hindi_phrase
INCLUDE_DIRECTORY := ../../ahocorasick
LIBRARY_DIRECTORY := ../../ahocorasick/build
LINK_LIBRARY := ahocorasick
BUILD_DIRECTORY := build

ifeq ($(wildcard $(LIBRARY_DIRECTORY)/lib$(LINK_LIBRARY).a),) 
all:;@echo 'Please go to ../ahocorasick directory and complie it first.'
else
all: $(APP_NAME) $(APP_NAME1) $(APP_NAME2)
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

mkbuilddir:
	mkdir -p $(BUILD_DIRECTORY)

clean:
	rm -rf $(BUILD_DIRECTORY)
