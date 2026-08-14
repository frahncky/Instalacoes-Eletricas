LATEXMK ?= latexmk
OUTDIR := build
FLAGS := -pdf -interaction=nonstopmode -halt-on-error -outdir=$(OUTDIR)

DIAGNOSTICO := materiais/esquemas_iluminacao_revisados.tex

.PHONY: all diagnostico clean distclean

all: diagnostico

diagnostico:
	@mkdir -p $(OUTDIR)
	$(LATEXMK) $(FLAGS) $(DIAGNOSTICO)

clean:
	$(LATEXMK) -c -outdir=$(OUTDIR) $(DIAGNOSTICO)

distclean:
	$(LATEXMK) -C -outdir=$(OUTDIR) $(DIAGNOSTICO)
