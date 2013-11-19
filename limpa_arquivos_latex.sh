#!/bin/bash
# Escrito por: Thomaz Rodrigues Botelho
# Descrição: Limpa arquivos temporários do latex gerados durante
#            A compilação.
#
# Algumas informações sobre redirecionar para /dev/null:
#
# Anular a saída:
# ls arquivo_nao_existente 1> /dev/null
# ou resumindo...
# ls arquivo_nao_existente > /dev/null
#
# Anular a mensagem de erro:
# ls arquivo_nao_existente 2> /dev/null
#
# Anular a saída e a mensagem de erro:
# rm arquivo_nao_existente > /dev/null 2> /dev/null
# ou resumindo...
# rm arquivo_nao_existente > /dev/null 2>&1

echo "> Excluindo arquivos temporarios do latex..."
rm *.aux 2> /dev/null
rm *.bbl 2> /dev/null
rm *.blg 2> /dev/null
rm *.brf 2> /dev/null
rm *.dvi 2> /dev/null
rm *.fdb_latexmk 2> /dev/null
rm *.fls 2> /dev/null
rm *.idx 2> /dev/null
rm *.ilg 2> /dev/null
rm *.ind 2> /dev/null
rm *.lof 2> /dev/null
rm *.log 2> /dev/null
rm *.lot 2> /dev/null
rm *.nav 2> /dev/null
rm *.out 2> /dev/null
rm *.run.xml 2> /dev/null
rm *.snm 2> /dev/null
rm *.synctex.gz 2> /dev/null
rm *.synctex.gz\(busy\) 2> /dev/null
rm *.toc 2> /dev/null
rm *-blx.bib 2> /dev/null
echo "> Pronto!"
