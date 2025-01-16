#!/bin/bash
#variaveis
c="clear"
i="sudo apt-get install "
p="sudo pip3 install"
up="sudo apt-get update -y && sudo apt-get full-upgrade -y"
b="--break-system-package"
px="pipx install xyz"

echo "[**Atualizando arquivos...**]"
$up
echo "[**Atualização completa**] "
$c
echo "[**Baixando dependências do Ameba...**]"

# Instalação de pacotes
$i python3-pip -y
$i docker-cli -y
$i apksigner -y
$i python2 -y 
$i python3 -y 
$i golang-go -y
$i git -y 
$i nmap -y 
$i nikto -y 
$i whatweb -y 
$i nuclei -y 
$i subfinder -y 
$i gobuster -y 
$i wpscan -y 
$i sherlock -y 
$i proxychains4 -y 
$i ettercap-text-only -y 
$i wget -y 
$i whois -y
$i veil -y
$i hashcat -y
$i wordlists -y
$i set -y
$i httpx -y
$i pipx -y
$i systemctl -y
$i postgresql -y
$i apache2 -y
$i tor -y
$i veil -y
$i apktool -y
$i metagoofil -y
$i make -y
$c

#Instalando uro
echo "[**Fazendo o donwload do uro.**]"
$p uro $b
echo "[**Download do uro finalizado!**]"
echo "[**Fazendo download de ferramentas de Phishing**]"
$p maxphisher $b
$p colorama $b
$p sockets $b
$p requests $b
$p katana $b
$p waybackurls $b
$p hakrawler $b
$px
$c

# Clonando repositório NucleiFuzzer e executando instalação
if [ ! -d "NucleiFuzzer" ]; then
  sudo git clone https://github.com/0xKayala/NucleiFuzzer.git
  cd NucleiFuzzer
  sudo chmod +x install.sh && ./install.sh
  cd ..
  nf
else
  echo "[**Repositório NucleiFuzzer já clonado e pronto para funcionar!**]"
fi
$c
echo "[**Dependências baixadas com sucesso**]"
$c
$up
$c
echo "[**A atualização foi concluída com sucesso**]"
