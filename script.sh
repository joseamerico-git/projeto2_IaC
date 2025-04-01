#!/bin/bash

#Projeto IaC - Linux Básico 
#Provisionamento de um servidor WEB utilizando IaC (Infraestrutura como código)

echo 'Atualizando o sistema operacional...'
apt-get update
apt-get upgrade -y
echo 'Configurando o servidor Apache...'
apt-get install apache2 -y
echo 'Baixando programas necessários...'
echo 'Instalando unzip...'
apt-get install unzip -y
echo 'Baixando o projeto no Git-Hub em pasta temporária...'
cd /tmp
wget https://github.com/joseamerico-git/html-teste/archive/refs/heads/main.zip
echo 'Descompactando arquivos...'
unzip main.zip
cd html-teste-main
cd linux-site-teste
echo 'Movendo arquivos'
cp -R * /var/www/html/
