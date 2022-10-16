#!/bin/bash

echo "Atualizando o sistema..."

apt-get update
apt-get upgrade -y

echo "Instalando o Apache..."

apt-get install apache2 -y

echo "instalando o Unzip..."

apt-get install unzip -y

echo "baixando o arquivo do site"

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

echo "copiando os arquivos do site para o diretorio padrao do apache"

cp -R * /var/www/html/

echo "Fim."
