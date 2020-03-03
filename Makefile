book = more=than-code
chapters = $(shell cat chapters.txt)

epub: book

book: $(book).epub

mobi: $(book).mobi

pdf: $(book).pdf

$(book).mobi: $(book).epub
	kindlegen -verbose $(book).epub

$(book).epub: $(chapters) epub.css metadata.xml epub.css cover.png 
	pandoc -o $(book).epub $(chapters) --epub-metadata=metadata.xml --toc --toc-depth=3 --css=epub.css --epub-cover-image=cover.png --number-sections

$(book).pdf: $(book).epub
	ebook-convert $(book).epub $(book).pdf

clean:
	rm -f $(book).{pdf,epub,mobi}

