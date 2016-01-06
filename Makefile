all: exam.pdf frontpage.pdf
	pdfjam \
	frontpage.pdf \
	exam.pdf \
	--outfile BPRD-exam-.pdf

exam.pdf: exam.tex
	pdflatex exam.tex
	pdflatex exam.tex
