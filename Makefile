all: index.html

%.html: %.org
	emacs $< --batch -f org-html-export-to-html --kill

.PHONY: all
