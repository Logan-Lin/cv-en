all: main

main: main.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f main.tex

clean:
	latexmk -C
	rm out/*
