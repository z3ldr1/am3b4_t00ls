#!/bin/bash
echo " 
"
echo " -- ## Automatic Scanner for BugBounty - Desnvolved by z3ldr1s ## --


        zzzzzzzzzzzzzzzz          |  toll de automatização de scanner para pentest!
                      z           |  Desenvolved by: z3ldr1s
                     z            |
                    z             |
                   z              |
                  z               |
                 z                |  Dependências: nmap, whatweb, nuclei, nuclei paramsider, nikto, wget, subifnder, httpx, wpscan, gobuster, wordlists, whois!
                z                 |
               z                  |
              z                   |  Am3b4 t00l
             z                    |
            zzzzzzzzzzzzzz        |



"


url=""
api=""
diretorio=""
https_url=""

read -p "Qual caminho da pasta deseja salvar?: " diretorio
echo "
"

read -p "Sua API do WPScan: " api
echo "
"

read -p "Qual a URL completa do site (ex: https://example.com)?: " https_url
echo "
"

read -p "Domínio para o escaneamento (ex: example.com): " url
echo "
"


echo "Scaneando, aguarde!
"

echo "Iniciando nmap!"
sudo nmap -v -sS -p-65535 -A -sV -Pn -T 5 --script=vulners.nse -g 53 -O --min-rate=450 -A -oN "$diretorio/scan-nmap.txt" "$url"
echo "[**Nmap Finalizado**]
"

echo "Iniciando nuclei paramsider!"
sudo nf -d "$https_url" > "$Caminho_do_diretorio"/nf-vuns.txt
echo "[**Nuclei paramsider finalizado**]
"

echo "Iniciando whatweb!"
sudo whatweb -a3 "$url" > "$diretorio/services.txt"
echo " [**Whatweb finalizado**]
"

echo "Iniciando força bruta de diretórios com gobuster!"
sudo gobuster dir -u "$https_url" -w /usr/share/wordlists/dirb/common.txt > "$diretorio/directories.txt"
echo " [**Gobuster finalizado**]
"
echo "Iniciando WhoIs!"
sudo whois "$url" > "$diretorio/whois.txt"
echo " [**whois Finalizado**]
"

echo "Iniciando nikto!"
sudo nikto -url "$https_url" -C all > "$diretorio/scan-nikto.txt"
echo " [**Nikto finalizado**]
"

echo "Iniciando o nuclei"
echo "$https_url" | subfinder -all | nuclei -severity low,medium,high,critical -t ~/.local/nuclei-templates > "$diretorio/nuclei-vulns.txt"
echo "[**Escanemaneto do nuclei finalizado**]
"

echo "Criando arquivo info.txt"
touch "$diretorio/info.txt"
echo "Criado!"

read -p "Deseja fazer scan do WordPress (caso exista)? [S/N]: " resposta
if [[ "$resposta" == "S" || "$resposta" == "s" ]]; then
  wpscan --url "$url" --force -e vp,vt,tt,cb,dbe,u,m --rua --api-token "$api"
echo "  [**Scan do wp concluido**] 
"
else
  echo " [*Scan do WordPress ignorado*] :(
"
fi

read -p "Deseja fazer download do site para análise? [S/N]: " resposta2
if [[ "$resposta2" == "S" || "$resposta2" == "s" ]]; then
  wget -m "$https_url" -P "$diretorio/site-mirror"
  echo " [**Download do site concluído**]
"
else
  echo "[**SCAN FINALIZADO**]. Obrigado por utilizar a am3b4_t00ls"
fi
