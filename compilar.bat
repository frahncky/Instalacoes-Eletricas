@echo off
setlocal
cd /d "%~dp0"

where latexmk >nul 2>&1
if errorlevel 1 (
  echo ERRO: latexmk nao encontrado.
  exit /b 1
)

if not exist build mkdir build

call :compilar "materiais\instalacoes_eletricas_completo.tex"
if errorlevel 1 exit /b 1
call :compilar "materiais\instalacoes_eletricas_prediais.tex"
if errorlevel 1 exit /b 1
call :compilar "materiais\instalacoes_eletricas_industriais.tex"
if errorlevel 1 exit /b 1
call :compilar "materiais\caderno_projetos.tex"
if errorlevel 1 exit /b 1

echo.
echo PDFs gerados em build\
exit /b 0

:compilar
echo.
echo Compilando %~1...
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build "%~1"
exit /b %errorlevel%
