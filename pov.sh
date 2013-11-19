#!/usr/bin/sh
# Escrito por: Thomaz Rodrigues Botelho
# Descrição: Compilando arquivos .pov (povray)

if [ "$#" == "0" ]; then
  echo "Uso: pov.sh [OPÇÃO] arquivo"
  echo "Configura a mensagem de tela bloqueada. Se não for especificada opção a mensagem atual será removida."
  echo ""
  echo "Opções válidas:"
  echo "fast - Compilação rápida"
  echo "best - Compilação ótima"
else
  case $1 in
    "fast") povray +w800 +h600 hello.pov $2;;
    "best") povray +A0.0 +Q9 +R9 +w800 +h600 $2;;
       *) echo "Opção desconhecida! Digite: "pov.sh" sem parâmetros para visualizar lista de opções";;
  esac
fi
