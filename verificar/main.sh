#!/bin/bash

echo "Proyecto de automatización"> proyecto.txt
mkdir proyectos ./proyectos/backup
touch ./proyectos/proyecto_{1..500}.txt
cp proyecto.txt ./proyectos/backup/proyecto_V1.txt
cp ./proyectos/proyecto_*.txt ./proyectos/backup/
rm ./proyectos/proyecto_*.txt
ls ./proyectos/backup/ | wc -l
