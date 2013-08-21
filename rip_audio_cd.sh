#!/bin/bash
echo " "
echo "*** Obtendo informacao do CD... ***"
echo " "
cdparanoia -vsQ
echo " "
echo "*** Extraindo musica inicialmente sem compressao... ***"
echo " "
cdparanoia -B
echo " "
echo "*** Convirtindo arquivos a formato mp3 ***"
echo " "
#COUNT=$(find . -maxdepth 1 -type f -print| wc -l)  <-- Conta quantos arquivos
#tem e joga na variavel
for t in track0{1..9}*.wav; do lame -b160 $t; done
#for t in track{10..$COUNT}*.wav; do lame -b160 $t; done  <-- Quando aplico aqui
#da pau
for t in track{1..15}*.wav; do lame -b160 $t; done   #<-- Por isso coloco 15
#mas deveria ser o num maximo de arquivos
echo " "
echo "*** Apagando arquivos sem compressao... ***"
rm *.wav
echo " "
echo "Pronto!"
echo " "
