resume: resume.pdf

# LATEX=latexrun
LATEX = docker run --rm -it \
				-v $(PWD):/data:z -w /data \
				dxjoke/tectonic-docker tectonic

.PHONY:
resume.pdf: resume.tex structure.tex
	$(LATEX) resume.tex

.PHONY:
cover-letters/%: cover-letters/%.tex
	$(LATEX) $@.tex -o $@.pdf

.PHONY:
clean:
	$(LATEX) --clean-all
