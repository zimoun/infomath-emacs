all: doc.tex table1.tex table2.tex
	pdflatex doc.tex

%.tex: %.org
	 emacs -batch -q $< --eval="(org-latex-export-to-latex nil nil t t)"

clean:
	-rm table?.tex
	-rm doc.{aux,log}
