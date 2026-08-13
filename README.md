# Instalações Elétricas

Coleção em LaTeX/Beamer 16:9 sobre instalações elétricas prediais e industriais, com aplicações às normas ABNT e aos padrões da Equatorial Energia no Maranhão.

## Materiais

| Fonte | PDF gerado | Conteúdo |
|---|---|---|
| `materiais/instalacoes_eletricas_completo.tex` | `build/instalacoes_eletricas_completo.pdf` | Predial e industrial em um único material |
| `materiais/instalacoes_eletricas_prediais.tex` | `build/instalacoes_eletricas_prediais.pdf` | Projeto e dimensionamento predial |
| `materiais/instalacoes_eletricas_industriais.tex` | `build/instalacoes_eletricas_industriais.pdf` | Distribuição e instalações industriais |
| `materiais/caderno_projetos.tex` | `build/caderno_projetos.pdf` | Seis projetos completos |

## Organização

| Caminho | Finalidade |
|---|---|
| `materiais/` | Documentos principais que geram os quatro PDFs |
| `estilo/` | Identidade visual Beamer da coleção |
| `teoria/comum/` | Capítulos compartilhados |
| `teoria/predial/` | Conteúdo específico de instalações prediais |
| `teoria/industrial/` | Conteúdo específico de instalações industriais |
| `projetos/base/` | Simbologia, plantas, portas e vãos |
| `projetos/residenciais/` | Casa térrea e apartamento |
| `projetos/comerciais/` | Edifício corporativo e centro empresarial |
| `projetos/industriais/` | Indústria em BT e indústria com subestação |
| `build/` | PDFs e auxiliares gerados; não versionados |

## Seis projetos

1. Casa térrea com duas suítes.
2. Apartamento com varanda e duas suítes.
3. Edifício corporativo com elevador, escada e SPDA.
4. Centro empresarial e de treinamento.
5. Indústria leve atendida em baixa tensão.
6. Indústria com subestação própria.

## Compilação

### Linux e macOS

Todos os materiais:

```bash
make
```

Alvos individuais:

```bash
make completo
make predial
make industrial
make projetos
```

### Windows

```bat
compilar.bat
```

Os PDFs são gravados em `build/`.

## Base técnica

- ABNT NBR 5410:2004;
- ABNT NBR 14039:2021;
- ABNT NBR 5419-1:2026 e demais partes da série na edição aplicável;
- ABNT NBR 17019:2022;
- série ABNT NBR IEC 61439;
- NR-10;
- normas técnicas vigentes da Equatorial Energia aplicáveis ao Maranhão.

As revisões de conexão devem ser conferidas na página oficial da [Equatorial Maranhão](https://ma.equatorialenergia.com.br/institucional/leis-e-normas-tecnicas/normas-tecnicas/instalacao-de-padrao/). Para a NR-10, o material distingue o [texto vigente até 31/05/2027 e a nova redação com vigência em 01/06/2027](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-10-nr-10).

## Automação

O GitHub Actions executa `make all` e publica os quatro PDFs como artefato.
