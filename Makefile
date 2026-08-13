LATEXMK ?= latexmk
OUTDIR := build
FLAGS := -pdf -interaction=nonstopmode -halt-on-error -outdir=$(OUTDIR)

COMPLETO := materiais/instalacoes_eletricas_completo.tex
PREDIAL := materiais/instalacoes_eletricas_prediais.tex
INDUSTRIAL := materiais/instalacoes_eletricas_industriais.tex
PROJETOS := materiais/caderno_projetos.tex

.PHONY: all completo teoricos predial industrial projetos clean distclean

all: completo predial industrial projetos

completo:
	@mkdir -p $(OUTDIR)
	$(LATEXMK) $(FLAGS) $(COMPLETO)

teoricos: predial industrial

predial:
	@mkdir -p $(OUTDIR)
	$(LATEXMK) $(FLAGS) $(PREDIAL)

industrial:
	@mkdir -p $(OUTDIR)
	$(LATEXMK) $(FLAGS) $(INDUSTRIAL)

projetos:
	@mkdir -p $(OUTDIR)
	$(LATEXMK) $(FLAGS) $(PROJETOS)

clean:
	$(LATEXMK) -c -outdir=$(OUTDIR) $(COMPLETO)
	$(LATEXMK) -c -outdir=$(OUTDIR) $(PREDIAL)
	$(LATEXMK) -c -outdir=$(OUTDIR) $(INDUSTRIAL)
	$(LATEXMK) -c -outdir=$(OUTDIR) $(PROJETOS)

distclean:
	$(LATEXMK) -C -outdir=$(OUTDIR) $(COMPLETO)
	$(LATEXMK) -C -outdir=$(OUTDIR) $(PREDIAL)
	$(LATEXMK) -C -outdir=$(OUTDIR) $(INDUSTRIAL)
	$(LATEXMK) -C -outdir=$(OUTDIR) $(PROJETOS)
