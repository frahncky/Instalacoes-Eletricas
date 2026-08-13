@echo off
setlocal
cd /d %~dp0

where latexmk >nul 2>nul
if %errorlevel%==0 (
  latexmk -pdf -interaction=nonstopmode -halt-on-error instalacoes_eletricas_material3.tex
  if errorlevel 1 exit /b 1
  latexmk -pdf -interaction=nonstopmode -halt-on-error instalacoes_eletricas_prediais.tex
  if errorlevel 1 exit /b 1
  latexmk -pdf -interaction=nonstopmode -halt-on-error instalacoes_eletricas_industriais.tex
  if errorlevel 1 exit /b 1
  latexmk -pdf -interaction=nonstopmode -halt-on-error instalacoes_eletricas_simbologia_projetos_equatorial_ma.tex
  if errorlevel 1 exit /b 1
) else (
  for %%F in (instalacoes_eletricas_material3.tex instalacoes_eletricas_prediais.tex instalacoes_eletricas_industriais.tex instalacoes_eletricas_simbologia_projetos_equatorial_ma.tex) do (
    pdflatex -interaction=nonstopmode -halt-on-error %%F
    if errorlevel 1 exit /b 1
    pdflatex -interaction=nonstopmode -halt-on-error %%F
    if errorlevel 1 exit /b 1
  )
)

echo.
echo PDFs gerados com sucesso nesta pasta.
echo - instalacoes_eletricas_material3.pdf
echo - instalacoes_eletricas_prediais.pdf
echo - instalacoes_eletricas_industriais.pdf
echo - instalacoes_eletricas_simbologia_projetos_equatorial_ma.pdf
endlocal
