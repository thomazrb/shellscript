#!/bin/bash
#Pasta com lista de imagens denominadas teste1.bmp, teste2.bmp, ...
echo " "
echo "Convirtindo..."
echo " "
mencoder "mf://teste%d.bmp" -mf fps=15 -o out.avi -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=800
echo " "
echo "Pronto!"
echo " "
