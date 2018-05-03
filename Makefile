CC = gcc
CFLAGS += -g -D_REENTRANT -D_POSIX_PTHREAD_SEMANTICS -Wall -fPIC
OBJECTS = main.o
LIBS = -lnsl -lrt
TARGET = foobin
HEADERS = 
TEMPFILES = core core.* *.o *.a *so.* temp.* *.tmp


all: ${TARGET}
	@ echo "Target 'all' done."


clean:
	rm -f ${TARGET} ${TEMPFILES}


${TARGET}: ${OBJECTS}
	${CC} -o $@ ${OBJECTS} ${LIBS}


${OBJECTS}: ${HEADERS}


