#! /bin/bash

#definimos el directorio
archivo=./url.sh
#si no existe el archivo lo creamos
if [ ! -f "$archivo" ]; then
	read -p "Dime direccion donde se guardaran los paquetes: " DIRECTORIO
	touch "$archivo"
	chmod 777 "$archivo"
	echo $DIRECTORIO > $archivo
fi
DIRECTORIO=$(cat $archivo)
cd $DIRECTORIO

#15.-especializacion
cd 15.-especializacion
cd 1.-produccion-audiovisual
cd audacity
sudo dpkg -i *.deb
cd ../
cd blender
sudo dpkg -i *.deb
cd ../
cd ffmulticonverter
sudo dpkg -i *.deb
cd ../
cd gimp
sudo dpkg -i *.deb
cd ../
cd inkscape
sudo dpkg -i *.deb
cd ../
cd kazam
sudo dpkg -i *.deb
cd ../
cd kdenlive
sudo dpkg -i *.deb
../
cd openshot
sudo dpkg -i *.deb
../
#cd simplescreenrecorder
#sudo dpkg -i *.deb
#cd ../
#cd vokoscreen
#sudo dpkg -i *.deb
#cd ../
cd ../
