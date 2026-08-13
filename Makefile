LATEXMK ?= latexmk
FLAGS := -pdf -interaction=nonstopmode -halt-on-error
MAIN := instalacoes_eletricas_material3.tex
PREDIAL := instalacoes_eletricas_prediais.tex
INDUSTRIAL := instalacoes_eletricas_industriais.tex
MODULO := instalacoes_eletricas_simbologia_projetos_equatorial_ma.tex

.PHONY: all main teoricos predial industrial modulo clean distclean

all: main teoricos modulo

main:
	$(LATEXMK) $(FLAGS) $(MAIN)

teoricos: predial industrial

predial:
	$(LATEXMK) $(FLAGS) $(PREDIAL)

industrial:
	$(LATEXMK) $(FLAGS) $(INDUSTRIAL)

modulo:
	$(LATEXMK) $(FLAGS) $(MODULO)

clean:
	$(LATEXMK) -c $(MAIN)
	$(LATEXMK) -c $(PREDIAL)
	$(LATEXMK) -c $(INDUSTRIAL)
	$(LATEXMK) -c $(MODULO)

distclean:
	$(LATEXMK) -C $(MAIN)
	$(LATEXMK) -C $(PREDIAL)
	$(LATEXMK) -C $(INDUSTRIAL)
	$(LATEXMK) -C $(MODULO)
