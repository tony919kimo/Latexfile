PAPER=paper

all: pdf

pdf: bib $(PAPER).tex
	pdflatex -shell-escape $(PAPER).tex
	bibtex $(PAPER)
	pdflatex $(PAPER).tex
	pdflatex $(PAPER).tex

bib: paper.bib

clean:
	rm -rf *~ $(PAPER).pdf $(PAPER).cb $(PAPER).cb2 $(PAPER).aux $(PAPER).log $(PAPER).blg $(PAPER).bbl
