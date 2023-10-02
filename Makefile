all: pdf html docx

pdf:
	quarto render --to quarto-thesis-pdf --output-dir pdf

html:
	quarto render --to html --output-dir html

docx:
	quarto render --to docx --output-dir docx


# -B flag to force render if file already exists