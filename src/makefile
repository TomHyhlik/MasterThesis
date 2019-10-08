CC = pdflatex
CC_DIF = latexdiff

OUTPUT = main.pdf




# latexdiff chapter_ucelaSoucStav.tex chapter_ucelaSoucStav_new.tex > differences.tex

CH1_NAME = ucelaSoucStav
CH2_NAME = stanoveniPozadavku
CH3_NAME = deviceDesign


all:
	$(CC_DIF) chapter_01_$(CH1_NAME)_old.tex chapter_01_$(CH1_NAME)_new.tex > chapter_01_$(CH1_NAME)_diff.tex 
	$(CC_DIF) chapter_02_$(CH2_NAME)_old.tex chapter_02_$(CH2_NAME)_new.tex > chapter_02_$(CH2_NAME)_diff.tex 
	$(CC_DIF) chapter_03_$(CH3_NAME)_old.tex chapter_03_$(CH3_NAME)_new.tex > chapter_03_$(CH3_NAME)_diff.tex 
	$(CC) main.tex

compile:
	$(CC) main.tex

run:
# 	open $(OUTPUT)
	xdg-open $(OUTPUT)
# 	cp main.pdf ../MasterThesis.pdf



clean:
	rm -f $(OUTPUT)

	