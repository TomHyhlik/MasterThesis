CC = pdflatex

CC_DIF = latexdiff

OUTPUT = main.pdf




# latexdiff chapter_ucelaSoucStav.tex chapter_ucelaSoucStav_new.tex > differences.tex

CH1_NAME = ucelaSoucStav





all:
	latexdiff chapter_01_ucelaSoucStav_old.tex chapter_01_ucelaSoucStav_new.tex > chapter_01_ucelaSoucStav.tex 
# 	$(CC_DIF) chapter_01_$(CH1_NAME)_old.tex chapter_01_$(CH1_NAME)_new.tex > chapter_01_$(CH1_NAME).tex 
# 	$(CC) main.tex

run:
	open $(OUTPUT)
#	xdg-open $(OUTPUT)


clean:
	rm -f $(OUTPUT)

	