all: main list

main: main.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f main.tex

list: list.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f list.tex

clean:
	latexmk -C
	rm -f out/*
