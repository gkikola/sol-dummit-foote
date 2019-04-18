NAME=dfsol
SRC_DIR=src

PDFLATEX=pdflatex -interaction=nonstopmode

.PHONY: $(NAME).pdf all clean

all: $(NAME).pdf

clean:
	rm -f *.pdf
	rm -f $(SRC_DIR)/*.aux $(SRC_DIR)/*.fdb_latexmk $(SRC_DIR)/*.fls
	rm -f $(SRC_DIR)/*.log $(SRC_DIR)/*.out $(SRC_DIR)/*.pdf
	rm -f $(SRC_DIR)/*.toc
	rm -f $(SRC_DIR)/*/*.aux

$(NAME).pdf: $(SRC_DIR)/$(NAME).tex
	latexmk -pdf -jobname="$(SRC_DIR)/$(NAME)" -pdflatex="$(PDFLATEX)" -use-make "$(SRC_DIR)/$(NAME).tex"
	cp $(SRC_DIR)/$(NAME).pdf .
