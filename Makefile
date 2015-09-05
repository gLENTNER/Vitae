#
# Copyright (c) Geoffrey Lentner 2015. All Rights Reserved.
# Makefile
# 
# Build PDFs from LaTex source for different versions of CV.
#


Latex    = pdflatex
Output   = Output/
Source   = Source/
Main     = Main

Academic = Academic/
cv       = lentner-cv-2015.9

Build    = --output-directory $(Output)

view     = open

$(Academic): $(Academic)$(Source)*.tex
	$(Latex) $(Build) $(Academic)$(Source)$(Main).tex

view:
	$(view) $(Output)$(Main).pdf

cv: $(Academic)
	cp $(Output)$(Main).pdf $(Academic)$(cv).pdf


clean:
	@del $(Output)$(Main)*
