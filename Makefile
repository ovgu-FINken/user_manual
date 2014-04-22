
all: pdf view
	echo 'pling'

pdf: bib
	pdflatex manual.tex
	pdflatex manual.tex > /dev/null

bib:
	pdflatex manual.tex
	biber manual

view:
	evince *.pdf &

clean:
	rm -rf *.toc
	rm -rf *.bbl
	rm -rf *.blg
	rm -rf *.aux
	rm -rf *.log
	rm -rf *.out
	rm -rf *.run.xml
	rm -rf *.bcf
	rm chapters/*.aux
