# Instalações Elétricas

Materiais de Instalações Elétricas da coleção, em LaTeX/Beamer 16:9 no estilo da casa.

## Materiais teóricos

- `instalacoes_eletricas_prediais.tex` — **Instalações Elétricas Prediais**.
- `instalacoes_eletricas_industriais.tex` — **Instalações Elétricas Industriais**.
- `instalacoes_eletricas_material3.tex` — versão combinada, agora **modular**, importando os mesmos capítulos canônicos dos dois materiais acima para evitar duplicação e divergência.

## Revisão predial — agosto de 2026

O material predial foi reestruturado para que o projeto seja consequência de uma planta arquitetônica coerente.

Principais correções:

- remoção da antiga planta esquemática sem lógica construtiva;
- nova sequência: arquitetura → pontos/cargas → circuitos → dimensionamento → proteções → quadro/balanceamento → entrada da concessionária → unifilar/memorial;
- nova planta residencial com paredes, circulação, portas, janelas, dimensões e uso definido dos ambientes;
- plantas distintas de iluminação/comandos e TUG/TUE;
- quadro de cargas coerente com os pontos desenhados;
- balanceamento das fases em 380/220 V;
- unifilar com N e PE separados, BEP/equipotencialização, DPS e grupos diferenciais coerentes;
- exemplos e exercícios refeitos para acompanhar o projeto real desenvolvido no material.

O projeto residencial canônico está em:

- `teoria/predial/05_projeto_residencial_equatorial_ma.tex`

O arquivo `instalacoes_eletricas_projeto_casa.tex` apenas importa esse módulo, evitando duas versões diferentes da mesma casa.

## Referências técnicas adotadas

### ABNT e segurança

- ABNT NBR 5410:2004 — instalações elétricas de baixa tensão;
- ABNT NBR 14039:2021 — instalações elétricas de média tensão;
- ABNT NBR 5419-1:2026 e demais partes aplicáveis da série — proteção contra descargas atmosféricas;
- ABNT NBR 17019:2022 — alimentação/recepção de energia de veículos elétricos;
- série ABNT NBR IEC 61439 — conjuntos de manobra e comando de baixa tensão;
- NR-10 vigente e nova redação publicada pela Portaria MTE nº 737/2026, explicitamente tratada no material como texto de vigência futura durante o período de transição.

### Equatorial Energia — Maranhão

- `NT.00001.EQTL` Rev.09 — unidade consumidora individual em baixa tensão;
- `NT.00004.EQTL` Rev.08 — empreendimentos com múltiplas unidades consumidoras;
- `NT.00002.EQTL` Rev.10 — atendimento em média tensão, quando aplicável;
- `NT.00020.EQTL` Rev.06 — micro e minigeração distribuída;
- `NT.00030.EQTL` Rev.03 — caixas de medição e proteção;
- `NT.00042.EQTL` Rev.04 — estações de recarga de veículos elétricos;
- `NT.00045.EQTL` Rev.01 — postes para padrão de entrada.

No Maranhão, os exemplos trifásicos em baixa tensão usam **380/220 V, 3F+N**. O enquadramento do padrão de entrada é feito depois do levantamento da carga instalada; o mínimo indicado pela concessionária para o padrão não é tratado como dimensionamento automático do alimentador interno.

## Estrutura dos capítulos

`teoria/comum/` contém capítulos compartilhados:

- normas, escopo e ciclo de projeto;
- fundamentos, potência, energia e demanda;
- condutores, infraestrutura e queda de tensão;
- proteção, DR, DPS e aterramento;
- SPDA;
- segurança, NR-10 e manutenção;
- qualidade de energia e eficiência;
- CAD/BIM, simulação e documentação;
- fechamento.

`teoria/predial/` contém conteúdo predial:

- projeto predial de baixa tensão;
- veículos elétricos, geração distribuída e cargas modernas;
- projeto residencial completo — Equatorial Maranhão;
- exemplos resolvidos;
- exercícios N1--N4.

`teoria/industrial/` contém conteúdo industrial:

- QGBT, CCM e motores;
- curto-circuito, seletividade e arco elétrico;
- exemplos industriais;
- exercícios industriais N1--N4.

## Caderno de seis projetos

- `instalacoes_eletricas_simbologia_projetos_equatorial_ma.tex` — documento principal do caderno;
- `instalacoes_eletricas_projetos_completos_realistas_v3.tex` — agregador ativo;
- `instalacoes_eletricas_projetos_base.tex` — simbologia e bases reutilizáveis;
- `plantas_realistas_base.tex` e `plantas_portas_extra.tex` — elementos arquitetônicos;
- `instalacoes_eletricas_projeto_casa.tex` — residência térrea;
- `instalacoes_eletricas_projeto_apartamento_realista.tex` — apartamento/EMUC;
- `instalacoes_eletricas_projeto_comercial.tex` — edifício corporativo/EMUC;
- `instalacoes_eletricas_projeto_comercial_2_realista.tex` — clínica/centro de serviços;
- `instalacoes_eletricas_projeto_industrial_realista.tex` — indústria leve atendida em BT;
- `instalacoes_eletricas_projeto_industrial_2_subestacao_realista.tex` — indústria com subestação própria;
- `instalacoes_eletricas_projetos_entrega.tex` — comparação e checklist de entrega.

Os seis projetos têm geometrias, circulação, cargas, quadros e soluções elétricas próprias. Nenhum quadro de cargas deve mencionar ambiente ou equipamento ausente na planta correspondente.

## Compilação

O repositório contém o `beamer_estilo_casa.tex` necessário para compilação.

### Windows

```bat
compilar.bat
```

### Linux/macOS

Tudo:

```bash
make
```

Somente teóricos:

```bash
make teoricos
```

Somente Predial:

```bash
make predial
```

Somente Industrial:

```bash
make industrial
```

## GitHub Actions

O workflow do repositório executa `make all` quando os fontes de Instalações Elétricas são alterados e publica os PDFs gerados como artefato quando a compilação é concluída com sucesso.
