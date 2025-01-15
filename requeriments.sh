#!/bin/bash
#variaveis
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

  sudo apt-ge install python2 -y 
   sudo apt-get install python3 -y 
     sudo apt-get install git -y 
     sudo apt-get install nmap -y 
    sudo apt-get install nikto -y 
    sudo apt-get install whatweb -y 
   sudo apt-get install  nuclei -y 
   sudo apt-get install  subfinder -y 
   sudo apt-get install  gobuster -y 
    sudo apt-get install wpscan -y 
   sudo apt-get install  sherlock -y 
   sudo apt-get install  proxychains4 -y 
   sudo apt-get install  ettercap -y 
   sudo apt-get install  wget -y 
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
