resume: resume.pdf

.PHONY:
resume.pdf: resume.tex structure.tex
	latexrun resume.tex

.PHONY:
cover-letters/%: cover-letters/%.tex
	latexrun $@.tex

.PHONY:
clean:
	latexrun --clean-all
