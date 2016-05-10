all: exam.pdf frontpage.pdf
	pdfjam \
	frontpage.pdf \
	exam.pdf \
	--outfile exam-with-frontpage.pdf

exam.pdf: exam.tex
	pdflatex exam.tex
	pdflatex exam.tex
