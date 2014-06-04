
ASSN = 5T
CLASS= cs143
CLASSDIR= /afs/ir/class/cs143

default :
	@echo "Valid make targets:"
	@echo "  make <file.s>        - compiles <file.cl> using reference coolc"
	@echo "  make submit          - submits your test case(s) and README"

submit: 
	$(CLASSDIR)/bin/pa_submit PA5T .

# build rules

%.s : %.cl
	$(CLASSDIR)/bin/coolc $< -o $@
