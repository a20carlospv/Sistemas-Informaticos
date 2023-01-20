#!/bin/bash

echo `clear`

#menú

function menu(){
	echo "Menú"
	echo "1: Limpiar pantalla"
	echo "2: Listar el contenido del directorio actual"
	echo "3: Crea un directorio"
	echo "4: Crea un enlace simbólico "
	echo "5: Busca un fichero o directorio"
	echo "6: Salir"
	read -p "Elige una opción: " opcion
	echo ""
}

function valor1() {
	echo `clear`
}

function valor2() {
	echo `ls -la`
	echo ""
}

function valor3() {
	read -p "Escribe el nombre del nuevo directorio: " nuevo_directorio
	echo `mkdir $nuevo_directorio`
	echo "Se ha creado un directorio" $nuevo_directorio
	echo ""
}

function valor4() {
	read -p "Escribe la ruta: " ruta
	read -p "Escribe el nombre: " nombre
	echo `ln -s $ruta $nombre`
	echo "Se ha creado el enlace simbólico" $nombre
	echo ""
}

function valor5() {
	read -p "Escribe la ruta en la que quiere buscar: " directorio
	read -p "Escribe el fichero o la extensión de fichero: " busqueda
	echo `find $directorio/*$busqueda -type d,f`
	echo ""
}

while ((opcion != 6))
do
	menu

case $opcion in
	1)
	echo "Has escogido la opción: 1"
	valor1
	;;
	2)
	echo "Has escogido la opción: 2"
	valor2
	;;
	3)
	echo "Has escogido la opción: 3"
	valor3
	;;
	4)
	echo "Has escogido la opción: 4"
	valor4
	;;
	5)
	echo "Has escogido la opción 5"
	valor5
	;;
	6)
	echo "Salir"
	;;
	*)
	echo "Escoge un valor válido" 
	;;
esac

done
