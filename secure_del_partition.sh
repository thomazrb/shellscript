#!/bin/bash
# Escrito por: Dennis Romero L.
# Descrição: Apaga partições no HD ou Flash_Memory sobrescrevindo 
#            dados aleatorios. Também util para recuperar penDrive apos ser 
#            usado para a instalação de linux.

echo " "
echo "Mostra as partições reconhecidas pelo sistema."
echo " "
fdisk -l
echo " "
echo "Selecione a partição desejada"
echo " "
echo "Linha comentada: shred -n 5 -vz /dev/sdb <-Tempo aprox. 20 min"
echo "Modifique a partição desejada antes de descomentar"
#shred -n 5 -vz /dev/sdb
#mkfs.vfat -n "MemLabel" -I /dev/sdb1
echo " "
echo "Pronto"
