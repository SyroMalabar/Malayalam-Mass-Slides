INPUT=mass

# @ tell gmake not to print the command being executed
clean_up = @rm -f *.aux *.dvi *.fdb* *.fls *.log *.out *.synctex.gz *.toc *.nav *.snm

all: clean
	@xelatex $(INPUT)
#	@xelatex $(INPUT) > /dev/null
	@$(call clean_up)

clean:
	@$(call clean_up)
	@rm -f *.pdf 
