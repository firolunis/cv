CC=latexmk
CFLAGS=-pdflatex=lualatex
LDFLAGS=
FILE=main
SOURCES=$(FILE).tex
OBJECTS=
EXECUTABLE=$(FILE).pdf
CLEANFILES=*.aux *.blg *.out *.bbl *.bak *.log *.dvi *.toc *.synctex.gz *.fls *.fdb_latexmk img/*.pdf

.FORCE: $(EXECUTABLE)

.PHONY: clean read

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(SOURCES)
	$(CC) $(CFLAGS) $(FILE)

pdf:
	$(CC) $(CFLAGS) $(FILE)

clean:
	rm -f $(CLEANFILES)

read:
	zathura $(EXECUTABLE) &
