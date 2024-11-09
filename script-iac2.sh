#!/bin/bash

echo "Atualizando o Servidor..."
apt-get update
apt-get ugrade -y

echo "Instalando o Servidor apache2..."
apt install apache2 -y

echo "Instalando o unzip..."
apt install unzip -y

echo "Baixando a aplicação no github no diretório /tmp..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "Copiando arquivos da aplicação no diretório apache..."
cp -R * /var/www/html/
 
