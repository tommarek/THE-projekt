PROJEKT=dokumentace

all: clean $(PROJEKT)

$(PROJEKT): $(PROJEKT)
	latex -interaction=nonstopmode $(PROJEKT)
	bibtex $(PROJEKT)
	latex -interaction=nonstopmode $(PROJEKT)
	latex -interaction=nonstopmode $(PROJEKT)
	dvips -T 210mm,295mm $(PROJEKT).dvi
	ps2pdf $(PROJEKT).ps
	evince $(PROJEKT).pdf

clean:
	rm -f *.toc *.dvi *.log  *.aux $(PROJEKT).ps $(PROJEKT).pdf *~ $(PROJEKT).blg $(PROJEKT).bbl
