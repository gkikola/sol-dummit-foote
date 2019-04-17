NAME=dfsol
SRC_DIR=src
BUILD_DIR=build

PDFLATEX=pdflatex -interaction=nonstopmode

.PHONY: $(BUILD_DIR)/$(NAME).pdf all clean

all: $(BUILD_DIR)/$(NAME).pdf

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

$(BUILD_DIR)/$(NAME).pdf: $(SRC_DIR)/$(NAME).tex | $(BUILD_DIR)
	latexmk -pdf -jobname="$(BUILD_DIR)/$(NAME)" -pdflatex="$(PDFLATEX)" -use-make "$(SRC_DIR)/$(NAME).tex"
