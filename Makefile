	Src=presentation

TeX=xelatex
Mi=makeindex
Bib=bibtex

Del=rm -f

Vec_C=dot
Vec_format=png
Vec_src=net-model
Vec_src_ext=dot
Vec_flags=-O -T
Vec_dir=./vec

all: one
	$(TeX) $(Src)

pdf: one
	$(TeX) $(Src)

one:
	$(TeX) $(Src)

cleanall: clean
	$(Del) $(Src).pdf

clean:
	$(Del) $(Src).aux
	$(Del) $(Src).bbl
	$(Del) $(Src).brf
	$(Del) $(Src).blg
	$(Del) $(Src).idx
	$(Del) $(Src).ilg
	$(Del) $(Src).ind
	$(Del) $(Src).log
	$(Del) $(Src).out
	$(Del) $(Src).toc

	$(Del) $(Src).nav
	$(Del) $(Src).snm