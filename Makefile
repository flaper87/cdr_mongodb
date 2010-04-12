## -*- Makefile -*-
##
## User: flaper87
## Time: 30/09/2009 06:00:38 PM
## Makefile created by Sun Studio.
##
## This file is generated automatically.
##


#### Compiler and tool definitions shared by all build targets #####
CC = gcc
# -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations
BASICOPTS = -w -g -pthread -pipe -g3 -O6 -fPIC -DMONGO_HAVE_STDINT -DAST_MODULE=\"cdr_mongodb\"
CFLAGS = $(BASICOPTS)

# Define the target directories.
TARGETDIR_cdr_mongodb.so=build


all: $(TARGETDIR_cdr_mongodb.so)/cdr_mongodb.so

## Target: cdr_mongodb.so
CFLAGS_cdr_mongodb.so = \
	-I/usr/include/ \
	-I/usr/local/include/ \
	-I/opt/asterisk/include/ \
	-I../mongo-c-driver/src/
CPPFLAGS_cdr_mongodb.so = 
OBJS_cdr_mongodb.so =  \
	$(TARGETDIR_cdr_mongodb.so)/cdr_mongodb.o

# Link or archive
SHAREDLIB_FLAGS_cdr_mongodb.so = -shared -Xlinker -x -Wl,--hash-style=gnu -Wl,--as-needed -rdynamic
LDLIBS_cdr_mongodb.so = -lbson -lmongoc
$(TARGETDIR_cdr_mongodb.so)/cdr_mongodb.so: $(TARGETDIR_cdr_mongodb.so) $(OBJS_cdr_mongodb.so) $(DEPLIBS_cdr_mongodb.so)
	$(LINK.c) $(CFLAGS_cdr_mongodb.so) $(CPPFLAGS_cdr_mongodb.so) -o $@ $(OBJS_cdr_mongodb.so) $(SHAREDLIB_FLAGS_cdr_mongodb.so) $(LDLIBS_cdr_mongodb.so)


# Compile source files into .o files
$(TARGETDIR_cdr_mongodb.so)/cdr_mongodb.o: $(TARGETDIR_cdr_mongodb.so) src/cdr_mongodb.c
	$(COMPILE.c) $(CFLAGS_cdr_mongodb.so) $(CPPFLAGS_cdr_mongodb.so) -o $@ src/cdr_mongodb.c



#### Clean target deletes all generated files ####
clean:
	rm -f \
		$(TARGETDIR_cdr_mongodb.so)/cdr_mongodb.so \
		$(TARGETDIR_cdr_mongodb.so)/cdr_mongodb.o
	rm -f -r $(TARGETDIR_cdr_mongodb.so)


# Create the target directory (if needed)
$(TARGETDIR_cdr_mongodb.so):
	mkdir -p $(TARGETDIR_cdr_mongodb.so)


# Enable dependency checking
#.KEEP_STATE:
#.KEEP_STATE_FILE:.make.state.GNU-amd64-Linux

