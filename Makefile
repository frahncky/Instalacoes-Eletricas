LATEXMK ?= latexmk
OUTDIR := build
FLAGS := -pdf -interaction=nonstopmode -halt-on-error -outdir=$(OUTDIR)

COMPLETO := materiais/instalacoes_eletricas_completo.tex
PREDIAL_PROJETO := materiais/instalacoes_prediais_projeto.tex
PREDIAL_MONTAGEM := materiais/instalacoes_prediais_montagem.tex
INDUSTRIAL := materiais/instalacoes_eletricas_industriais.tex
PROJETOS := materiais/caderno_projetos.tex

.PHONY: all completo teoricos predial predial-projeto predial-montagem industrial projetos clean distclean

all: completo predial industrial projetos

completo:
	@mkdir -p $(OUTDIR)
	$(LATEXMK) $(FLAGS) $(COMPLETO)

teoricos: predial-projeto predial-montagem industrial

predial: predial-projeto predial-montagem

predial-projeto:
	@mkdir -p $(OUTDIR)
	$(LATEXMK) $(FLAGS) $(PREDIAL_PROJETO)

predial-montagem:
	@mkdir -p $(OUTDIR)
	$(LATEXMK) $(FLAGS) $(PREDIAL_MONTAGEM)

industrial:
	@mkdir -p $(OUTDIR)
	$(LATEXMK) $(FLAGS) $(INDUSTRIAL)

projetos:
	@mkdir -p $(OUTDIR)
	$(LATEXMK) $(FLAGS) $(PROJETOS)

clean:
	$(LATEXMK) -c -outdir=$(OUTDIR) $(COMPLETO)
	$(LATEXMK) -c -outdir=$(OUTDIR) $(PREDIAL_PROJETO)
	$(LATEXMK) -c -outdir=$(OUTDIR) $(PREDIAL_MONTAGEM)
	$(LATEXMK) -c -outdir=$(OUTDIR) $(INDUSTRIAL)
	$(LATEXMK) -c -outdir=$(OUTDIR) $(PROJETOS)

distclean:
	$(LATEXMK) -C -outdir=$(OUTDIR) $(COMPLETO)
	$(LATEXMK) -C -outdir=$(OUTDIR) $(PREDIAL_PROJETO)
	$(LATEXMK) -C -outdir=$(OUTDIR) $(PREDIAL_MONTAGEM)
	$(LATEXMK) -C -outdir=$(OUTDIR) $(INDUSTRIAL)
	$(LATEXMK) -C -outdir=$(OUTDIR) $(PROJETOS)
