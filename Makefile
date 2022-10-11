.PHONY = all

all: rules.pdf

rules.pdf: rules.tex
	latexmk
