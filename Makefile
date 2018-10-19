all: proj3.pdf

.PHONY: clean

clean:
	rm proj3.dvi
	rm proj3.ps
	rm proj3.aux
	rm proj3.log
	rm proj3.pdf

proj3.pdf:
	latex proj3.tex
	latex proj3.tex
	dvips -t a4 proj3.dvi
	ps2pdf -sPAPERSIZE=a4 proj3.ps
