#!/bin/bash
#variaveis
c="clear"
i="sudo apt-get install "
p="sudo pip3 install"
up="sudo apt-get update -y && sudo apt-get full-upgrade -y"
b="--break-system-package"

echo "[**Atualizando arquivos...**]"
$up
echo " 
[**Atualização completa**] 
$c
"
echo "[**Baixando dependências do Ameba...**]

"

# Instalação de pacotes
$i python3-pip -y
$i python2 -y 
$i python3 -y 
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
$i ettercap -y 
$i wget -y 
$i whois -y
$i veil -y
$i hashcat -y
$i wordlists -y
$i setoolkit -y
$c

#Instalando uro
echo "[**Fazendo o donwload do uro.**]"
$p uro $b
echo "[**Fazendo download de ferramentas de Phishing**]"
$p maxphisher $b
$p colorama $b
$p sockets $b
$p requests $b

echo "
[**Download do uro finalizado!**] "
$c
$p 
# Clonando repositório NucleiFuzzer e executando instalação
if [ ! -d "NucleiFuzzer" ]; then
  sudo git clone https://github.com/0xKayala/NucleiFuzzer.git
  cd NucleiFuzzer
  sudo chmod +x install.sh && ./install.sh
  cd ..
else
  echo "[**Repositório NucleiFuzzer já clonado.**]"
fi
$c
echo "[**Dependências baixadas com sucesso**]"
$c
$up
$c
echo "[**A atualização foi concluída com sucesso**]"
