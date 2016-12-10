#
# Makefile for make
#
# Compiler: gcc
#

PROGS=CoffeeMachineFSM CoffeeMachineFSMtrc
CFLAGS=-Wall
CFLAGST=-D_REENTRANT -Wall
LIBS = pthread

all: $(PROGS)

CoffeeMachineFSM : msgq.o CoffeeMachine.o
	$(CC) $(CFLAGST) -o CoffeeMachineFSM CoffeeMachine.o msgq.o -l $(LIBS)

CoffeeMachineFSMtrc : msgq.o CoffeeMachineTrc.o
	$(CC) $(CFLAGST) -o CoffeeMachineFSMtrc CoffeeMachineTrc.o msgq.o -l $(LIBS)

msgq.o : msgq.c
	$(CC) $(CFLAGST) -g -c msgq.c

CoffeeMachine.o : CoffeeMachine.c
	$(CC) $(CFLAGST) -g -c CoffeeMachine.c

CoffeeMachineTrc.o : CoffeeMachineTrc.c
	$(CC) $(CFLAGST) -g -c CoffeeMachineTrc.c

clean:
	rm -f $(PROGS) *~ *.o
