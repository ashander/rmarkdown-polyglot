# rmarkdown-polyglot

![](all.png)

A simple demo of rmarkdown's versatility for academic publishing. (Thanks
to [pandoc](http://pandoc.org/).)

To get this running you just need to install `rstudio` and `pandoc-crossref`, and
make sure the `rmarkdown` package is installed in R.

If you have `make`, you can use the `Makefile`, otherwise you can run the
commands in it from the shell. (Just replace `$(SOURCE)` with `demo_paper`).
So, to make a tex file, do `Rscript -e 'rmarkdown::render("demo_paper.Rmd", "pdf_document")'`

Building this will fail unless you install
[pandoc-crossref](https://github.com/lierdakil/pandoc-crossref), which you
need to make equation and figure refs work, anyway. The options `eqnPrefix`
and `figPrefix` specified above can be changed to your liking. If you don't
want to deal with it, just delete the line `- pandoc-crossref` and the
`--filter` above it.

## More Resources

* Kieran Healy's long-form exposition of the benefits of working in plain text: http://plain-text.co/record.html 
* For a growing set of templates, see the [rticles](https://github.com/rstudio/rticles) package


## Thanks

To Jon Craton for the document on which `apa_styles.docx` was based, Rintze
Zelle for `ecology.csl`, Rstudio for `rmarkdown`, and John MacFarlane for
`pandoc`!
