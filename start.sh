#!/bin/bash

echo "Creating src folder"
mkdir src

echo "Creating first folder"
cd ./src
mkdir node-1
cd node-1
mkdir data

echo "Creating second folder"
cd ../
mkdir node-2
cd node-2
mkdir data

echo "Creating third folder"
cd ../
mkdir node-3
cd node-3
mkdir data

echo "Creating four folder"
cd ../
mkdir node-4
cd node-4
mkdir data

echo "Creating five folder"
cd ../
mkdir node-5
cd node-5
mkdir data

cd ../

echo "downloading besu client and installing"

# URL de descarga de Besu
BESU_URL="https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.7.2/besu-23.7.2.tar.gz"

# Directorio de instalación
INSTALL_DIR="/usr/local/bin"

# Verificar si wget o curl están disponibles
if [ -x "$(command -v wget)" ]; then
  DOWNLOADER="wget -O besu.tar.gz"
elif [ -x "$(command -v curl)" ]; then
  DOWNLOADER="curl -o besu.tar.gz"
else
  echo "Error: Ni wget ni curl están instalados. Por favor, instala al menos uno de ellos antes de continuar."
  exit 1
fi

# Descargar Besu desde la URL
echo "Descargando Besu desde $BESU_URL..."
$DOWNLOADER "$BESU_URL"

# Descomprimir el archivo
echo "Descomprimiendo Besu..."
tar -zxvf besu.tar.gz

# Mover la carpeta completa a /usr/local/bin
echo "Moviendo Besu a $INSTALL_DIR..."
sudo mv besu-23.7.2 "$INSTALL_DIR/besu"

# Limpiar archivos temporales
echo "Limpiando archivos temporales..."
rm -rf besu.tar.gz besu-23.7.2

echo "Instalación de Besu completada."

# Verificar la instalación
besu --version

# Agregar un retraso de 10 segundos
echo "Esperando 10 segundos..."
sleep 10


echo "Creating keys"
besu operator generate-blockchain-config --config-file=../genesis.json --to=networkFiles --private-key-file-name=key

echo "Moving created files to nodes"
mv networkFiles/genesis.json .

num=1

for file in "networkFiles/keys"/*
do
    mv "$file"/* node-"$num"/data/
    ((num++))
done

rm -r networkFiles
