MAPS = maps
CC = cc

all:
	@echo "USAGE: make run"

run:
	$(MAPS) -e multiply1.s

multiply: multiply.c
	$(CC) -o multiply multiply.c

clean:
	rm -rf *~ multiply1.s.mem multiply

# End of file (Makefile)
