CC = pdflatex
CC_DIF = latexdiff

OUTPUT = main.pdf

FILES_NEW =  $(wildcard chapter_*_new.tex)
CHAPTERS = $(patsubst %_new.tex,%, $(FILES_NEW))


all: rmDiff genDiff build run

# generate diffeneces between *_old and *_new tex files
genDiff:
	for chapter in $(CHAPTERS) ; do \
	    $(CC_DIF) $${chapter}_old.tex $${chapter}_new.tex > $${chapter}_diff.tex  ; \
	done

# remove differences, the text of *_new is copied into *_old tex files
rmDiff:
	for chapter in $(CHAPTERS) ; do \
	    cp $${chapter}_new.tex $${chapter}_old.tex ; \
	done
	$(all)

build:
	# rm main.lof
	$(CC) main.tex


runLinux:
	xdg-open $(OUTPUT) &


runMac:
	# open $(OUTPUT) &
	/usr/bin/open -a "/Applications/Google Chrome.app" '$(OUTPUT)'


run: runMac

open:
	open chapter_*_new.tex

publish:
	cp $(OUTPUT) ~/Gdrive/share/

clean:
	rm -f $(OUTPUT)
