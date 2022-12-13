book = more-than-code
chapters = $(shell cat chapters.txt)

epub: book

book: ebook/$(book).epub

mobi: ebook/$(book).mobi

pdf: ebook/$(book).pdf

ebook/$(book).mobi: ebook/$(book).epub
	ebook-convert ebook/$(book).epub ebook/$(book).mobi

ebook/$(book).epub: $(chapters) epub.css metadata.xml epub.css cover.png 
	pandoc -o ebook/$(book).epub $(chapters) --epub-metadata=metadata.xml --toc --toc-depth=3 --css=epub.css --epub-cover-image=cover.png --number-sections

ebook/$(book).pdf: ebook/$(book).epub
	ebook-convert ebook/$(book).epub ebook/$(book).pdf

clean:
	rm -f ebook/$(book).{pdf,epub,mobi}

