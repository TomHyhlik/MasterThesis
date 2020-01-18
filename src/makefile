CC = pdflatex
CC_DIF = latexdiff

OUTPUT = main.pdf

FILES_NEW =  $(wildcard chapter_*_new.tex)
CHAPTERS = $(patsubst %_new.tex,%, $(FILES_NEW))


all: build run


build:
	for chapter in $(CHAPTERS) ; do \
	    $(CC_DIF) $${chapter}_old.tex $${chapter}_new.tex > $${chapter}_diff.tex  ; \
	done
	$(CC) main.tex


discardChanges:
	for chapter in $(CHAPTERS) ; do \
	    cp $${chapter}_new.tex $${chapter}_old.tex ; \
	done
	$(all)

run:
	open $(OUTPUT)
# 	xdg-open $(OUTPUT) &




clean:
	rm -f $(OUTPUT)
