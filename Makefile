.PHONY: kyle-almas.pdf

CC = ./latexdockercmd.sh xelatex --halt-on-error
RESUME_SRCS = $(shell find src/sections -name '*.tex')

kyle-almas.pdf: src/kyle-almas.tex $(RESUME_SRCS)
	$(CC) $<

clean:
	rm kyle-almas.*
