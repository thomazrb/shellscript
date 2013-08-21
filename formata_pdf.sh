#!/usr/bin/sh
# Escrito por: Thomaz Rodrigues Botelho
# Descrição: Formata PDF's escaneados invertidos

#livro com 158 paginas... girar paginas pares 270 graus e paginas impares 90 graus
for i in $(seq 158);
do
  if [ $(($i%2)) -eq '0' ]; then
    pdf270 source.pdf $i --outfile pagina$i.pdf;
  else
    pdf90 source.pdf $i --outfile pagina$i.pdf;
  fi
done

pdfjam pagina?.pdf pagina??.pdf pagina???.pdf --landscape --outfile output.pdf
rm pagina*.pdf
