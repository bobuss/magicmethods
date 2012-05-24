docs: magicmethods.html magicmethods.pdf clean

html: magicmethods.html.tmp
	cat start.html magicmethods.html.tmp end.html > magicmethods.html

pdf: magicmethods.pdf

magicmethods.html.tmp: table.markdown magicmethods.markdown appendix.markdown
	python magicmarkdown.py

magicmethods.pdf: magicmethods.tex
	pdflatex magicmethods.tex

clean:
	rm -f markedup.html magicmethods.log magicmethods.dvi magicmethods.aux magicmethods.html.tmp
