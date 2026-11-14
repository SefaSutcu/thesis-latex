# latexmk ayarları: `latexmk` yazmak yeterli.
$pdf_mode = 1;            # pdflatex ile doğrudan PDF
$bibtex_use = 2;          # .bib değiştiyse BibTeX'i yeniden çalıştır; clean sırasında .bbl'yi de sil
@default_files = ('main.tex');
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 -file-line-error %O %S';
