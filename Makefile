resume: resume.pdf

.PHONY:
resume.pdf: resume.tex structure.tex
	latexrun resume.tex

.PHONY:
cover-letters/%: cover-letters/%.tex
	latexrun $@.tex -o $@.pdf

.PHONY:
clean:
	latexrun --clean-all
