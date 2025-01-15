#!/bin/bash
c="clear"
echo " "
echo "[**Atualizando arquivos...**]"
sudo apt-get update -y && sudo apt-get full-upgrade -y
echo " 
[**Atualização completa**] 
$c
"
echo "[**Baixando dependências do Ameba...**]

"

# Instalação de pacotes
sudo apt install -y \
  python3-pip \
  python2 \
  python3 \
  git \
  nmap \
  nikto \
  whatweb \
  nuclei \
  subfinder \
  gobuster \
  python3 \
  wpscan \
  msfconsole \
  sherlock \
  proxychains4 \
  ettercap \
  wget \
  whois
$c

#Instalando uro
echo "Fazendo o donwload do uro."
sudo pip3 install uro --break-system-packages
echo "
[**Download do uro finalizado!**]

"
$c
# Clonando repositório NucleiFuzzer e executando instalação
if [ ! -d "NucleiFuzzer" ]; then
  sudo git clone https://github.com/0xKayala/NucleiFuzzer.git
  cd NucleiFuzzer
  sudo chmod +x install.sh && ./install.sh
  cd ..
else
  echo "[**Repositório NucleiFuzzer já clonado.**]"
fi

echo " 

"
echo "[**Dependências baixadas com sucesso**]"

echo "
 
"
sudo apt-get update -y && sudo apt-get full-upgrade -y
$c
echo "[**A atualização foi concluída com sucesso**]"
