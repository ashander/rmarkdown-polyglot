SOURCE=demo_paper
TARGETS= $(SOURCE).docx $(SOURCE).R $(SOURCE).tex $(SOURCE).md $(SOURCE).pdf

.PHONY: all clean

all : $(SOURCE).Rmd refs.bib
	Rscript -e 'rmarkdown::render("$(SOURCE).Rmd")'

$(SOURCE).pdf : $(SOURCE).Rmd refs.bib
	Rscript -e 'rmarkdown::render("$(SOURCE).Rmd", "pdf_document")'

$(SOURCE).md : $(SOURCE).Rmd refs.bib
	Rscript -e 'rmarkdown::render("$(SOURCE).Rmd", "md_document")'

$(SOURCE).docx : $(SOURCE).Rmd refs.bib
	Rscript -e 'rmarkdown::render("$(SOURCE).Rmd", "word_document")'

$(SOURCE).R : $(SOURCE).Rmd
	Rscript -e 'knitr::purl("$(SOURCE).Rmd")'

# note: tex is produced as a side effect of pdf
# see https://github.com/rstudio/rmarkdown/issues/626
$(SOURCE).tex : $(SOURCE).Rmd refs.bib
	Rscript -e 'rmarkdown::render("$(SOURCE).Rmd", "pdf_document")'

clean :
	-rm edit $(TARGETS)
