all: paper

paper:
	latexmk -pdf lncs-paper.tex
