all: main list cover-letter

ifdef EXTENDED
MAIN_FLAGS = -jobname=main-extended -usepretex='\def\extendedcv{}'
endif

main: main.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f $(MAIN_FLAGS) main.tex

list: list.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f list.tex

cover-letter: cover-letter.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f cover-letter.tex

clean:
	latexmk -C
	rm -f out/*
