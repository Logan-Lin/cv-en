all: main list cover-letter

ifdef EXTENDED
MAIN_FLAGS = -usepretex='\def\extendedcv{}'
else ifdef MINIMAL
MAIN_FLAGS = -usepretex='\def\minimalcv{}'
endif

main: main.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f -g $(MAIN_FLAGS) main.tex

list: list.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f list.tex

cover-letter: cover-letter.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f cover-letter.tex

clean:
	latexmk -C
	rm -f out/*
