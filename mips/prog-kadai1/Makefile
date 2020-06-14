all:
	@echo "USAGE: make run1"
	@echo "        or"
	@echo "       make run2"

run1:
	maps -i sum_vec1.s
	run\
	print 0x10004000\

run2:
	maps -e sum_vec2.s

clean:
	rm -rf *~ sum_vec1.s.mem sum_vec2.s.mem

# End of file (Makefile)
