.PHONY: all vim

SRCs=uai2021.tex \
		 src/preamble.tex \
		 src/abstract.tex \
		 src/intro.tex \
		 src/related_work.tex \
		 src/background.tex \
		 src/asym_a2c.tex \
		 src/unbiased_asym_a2c.tex \
		 src/evaluation.tex \
		 src/conclusions.tex \
		 src/sw_data.tex \
		 src/acks.tex \
		 src/appendix.timed_value_functions_and_finite_horizon.tex \
		 src/appendix.proofs.tex \
		 src/appendix.environments.tex \
		 src/appendix.architectures.tex \

all: uai2021.pdf
# all: uai2021.pdf uai2021.main.pdf uai2021.appendix.pdf

vim:
	vim ${SRCs}

uai2021.pdf: ${SRCs}
	latexmk

# uai2021.main.pdf: uai2021.pdf
# 	pdftk uai2021.pdf cat 1-7 output uai2021.main.pdf

# uai2021.appendix.pdf: uai2021.pdf
# 	pdftk uai2021.pdf cat 8-end output uai2021.appendix.pdf

# supplementary.zip: uai2021.appendix.pdf
# 	zip supplementary.zip uai2021.appendix.pdf;
# 	cd .. && zip -r paper/supplementary.zip code/ && cd -
