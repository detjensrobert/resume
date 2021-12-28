.PHONY: FORCE
resume.pdf: FORCE resume.tex
	latexrun resume.tex

.PHONY: clean
clean:
	latexrun --clean-all
