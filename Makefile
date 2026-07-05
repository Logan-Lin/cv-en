all: main-full main-short list research-plan teaching-portfolio cover-letter

main-full: main-full.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f main-full.tex

main-short: main-short.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f main-short.tex

list: list.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f list.tex

research-plan: research-plan.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f research-plan.tex

teaching-portfolio: teaching-portfolio.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f teaching-portfolio.tex

cover-letter: cover-letter.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f cover-letter.tex

clean:
	latexmk -C
	rm -f out/*
