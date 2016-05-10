all: exam.pdf frontpage.pdf
	pdfjam \
	frontpage.pdf \
	exam.pdf \
	--outfile exam-with-frontpage.pdf

exam.pdf: exam.tex
	tlmgr update --self
	tlmgr install xcolor
	tlmgr install background
	pdflatex -halt-on-error exam.tex
	pdflatex -halt-on-error exam.tex
