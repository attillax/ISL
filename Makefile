TEMPFILES = \
	*.aux \
	*.lo[g,f,t] \
	*.out \
	*.toc \
	*.syntex.gz \
	*.gnuplot \
	*.table \

SOLUTIONS = ISL_solutions
NOTES = ISL_notes

$(SOLUTIONS).pdf: $(SOLUTIONS).tex

#compiling twice for autogenerated lists
	-pdflatex --enable-write18 $(SOLUTIONS).tex
	-pdflatex -interaction=nonstopmode $(SOLUTIONS).tex
	rm -f $(TEMPFILES)

clean:
	rm -r $(SOLUTIONS).pdf $(NOTES).pdf

notes:
#compiling twice for autogenerated lists
	-pdflatex --enable-write18 $(NOTES).tex
	-pdflatex -interaction=nonstopmode $(NOTES).tex
	rm -f $(TEMPFILES)	

.PHONY: clean, notes
