#!/bin/bash

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## ZapEase ##

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Cores

amarelo="\e[33m"
verde="\e[32m"
branco="\e[97m"
bege="\e[93m"
vermelho="\e[91m"
reset="\e[0m"

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## ZapEase ##

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

sudo apt update
sudo apt upgrade -y

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

nome_aviso(){

clear

echo ""

echo -e "$amarelo===================================================================================================$reset"
echo -e "$amarelo= $amarelo=$reset"
echo -e "$amarelo= $branco ██████╗  █████╗  ██████╗ ███████╗ ███████╗ ███████╗  $amarelo=$reset"
echo -e "$amarelo= $branco ██╔══██╗██╔══██╗██╔════╝ ██╔════╝ ██╔════╝ ██╔════╝  $amarelo=$reset"
echo -e "$amarelo= $branco ██████╔╝███████║██║  ███╗█████╗   █████╗   ███████╗  $amarelo=$reset"
echo -e "$amarelo= $branco ██╔═══╝ ██╔══██║██║   ██║██╔══╝   ██╔══╝   ╚════██║  $amarelo=$reset"
echo -e "$amarelo= $branco ██║     ██║  ██║╚██████╔╝███████╗ ███████╗ ███████║  $amarelo=$reset"
echo -e "$amarelo= $branco ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚══════╝ ╚══════╝ ╚══════╝  $amarelo=$reset"
echo -e "$amarelo= $amarelo=$reset"
echo -e "$amarelo===================================================================================================$reset"
echo ""
echo ""
}

nome_atualizando(){

clear

echo ""

echo -e "$amarelo===================================================================================================$reset"
echo -e "$amarelo= $amarelo=$reset"
echo -e "$amarelo= $branco █████╗ ████████╗ █████╗ ██╗  ██╗███████╗ █████╗ ███╗   ██╗██████╗ ██████╗   $amarelo=$reset"
echo -e "$amarelo= $branco ██╔══██╗╚══██╔══╝██╔══██╗██║ ██╔╝╚══███╔╝██╔══██╗████╗  ██║██╔══██╗██╔═══██╗  $amarelo=$reset"
echo -e "$amarelo= $branco ███████║   ██║   ███████║█████╔╝   ███╔╝ ███████║██╔██╗ ██║██║  ██║██║   ██║  $amarelo=$reset"
echo -e "$amarelo= $branco ██╔══██║   ██║   ██╔══██║██╔═██╗  ███╔╝  ██╔══██║██║╚██╗██║██║  ██║██║   ██║  $amarelo=$reset"
echo -e "$amarelo= $branco ██║  ██║   ██║   ██║  ██║██║  ██╗███████╗██║  ██║██║ ╚████║██████╔╝╚██████╔╝  $amarelo=$reset"
echo -e "$amarelo= $branco ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝   $amarelo=$reset"
echo -e "$amarelo= $amarelo=$reset"
echo -e "$amarelo===================================================================================================$reset"
echo ""
echo ""
}

nome_iniciando(){

clear

echo ""

echo -e "$amarelo===================================================================================================$reset"
echo -e "$amarelo= $amarelo=$reset"
echo -e "$amarelo= $branco ██╗███╗   ██╗██╗ ██████╗██╗ █████╗ ███╗   ██╗██████╗ ██████╗ $amarelo=$reset"
echo -e "$amarelo= $branco ██║████╗  ██║██║██╔════╝██║██╔══██╗████╗  ██║██╔══██╗██╔═══██╗ $amarelo=$reset"
echo -e "$amarelo= $branco ██║██╔██╗ ██║██║██║     ██║███████║██╔██╗ ██║██║  ██║██║   ██║ $amarelo=$reset"
echo -e "$amarelo= $branco ██║██║╚██╗██║██║██║     ██║██╔══██║██║╚██╗██║██║  ██║██║   ██║ $amarelo=$reset"
echo -e "$amarelo= $branco ██║██║ ╚████║██║╚██████╗██║██║  ██║██║ ╚████║██████╔╝╚██████╔╝ $amarelo=$reset"
echo -e "$amarelo= $branco ╚═╝╚═╝  ╚═══╝╚═╝ ╚═════╝╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═════╝ $amarelo=$reset"
echo -e "$amarelo= v. 2.7.1 $amarelo=$reset"
echo -e "$amarelo===================================================================================================$reset"
echo ""
echo ""
}

nome_verificando(){

clear

echo ""

echo -e "$amarelo===================================================================================================$reset"
echo -e "$amarelo= $amarelo=$reset"
echo -e "$amarelo= $branco ██╗ ██╗███████╗██████╗ ██╗███████╗██╗ ██████╗ █████╗ ███╗   ██╗██████╗ ██████╗ $amarelo=$reset"
echo -e "$amarelo= $branco ██║ ██║██╔════╝██╔══██╗██║██╔════╝██║██╔════╝██╔══██╗████╗  ██║██╔══██╗██╔═══██╗ $amarelo=$reset"
echo -e "$amarelo= $branco ██║ ██║█████╗  ██████╔╝██║█████╗  ██║██║  ███████║██╔██╗ ██║██║  ██║██║   ██║ $amarelo=$reset"
echo -e "$amarelo= $branco ╚██╗ ██╔╝██╔══╝  ██╔══██╗██║██╔══╝  ██║██║  ██╔══██║██║╚██╗██║██║  ██║██║   ██║ $amarelo=$reset"
echo -e "$amarelo= $branco ╚████╔╝ ███████╗██║  ██║██║██║  ██║╚██████╗██║  ██║██║ ╚████║██████╔╝╚██████╔╝ $amarelo=$reset"
echo -e "$amarelo= $branco ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝ $amarelo=$reset"
echo -e "$amarelo= $amarelo=$reset"
echo -e "$amarelo===================================================================================================$reset"
echo ""
echo ""
}

# AQUI COMEÇA O SCRIPT PRINCIPAL

nome_aviso

atualiza_sistema() {
    clear
    echo -e "$amarelo Atualizando sistema e instalando dependências básicas... $reset"
    sudo apt update
    sudo apt upgrade -y
    sudo apt install -y apt-transport-https ca-certificates curl software-properties-common dialog jq git python3 apache2-utils neofetch
}

instala_docker() {
    clear
    echo -e "$amarelo Instalando Docker... $reset"
    curl -fsSL https://get.docker.com | sh
    echo -e "$amarelo Instalando Docker Compose... $reset"
    DOCKER_COMPOSE_VERSION=2.22.3
    sudo curl -L "https://github.com/docker/compose/releases/download/v${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    sudo usermod -aG docker $USER
}

input_password() {
  while true; do
    read -s -p "Digite a senha para $1: " pass1
    echo
    read -s -p "Confirme a senha para $1: " pass2
    echo
    [ "$pass1" == "$pass2" ] && break
    echo -e "${vermelho}Senhas não conferem. Tente novamente.${reset}"
  done
  echo "$pass1"
}

coleta_dados() {
    clear
    echo -n "Informe o domínio para acessar o Portainer (ex: painel.seudominio.com): "
    read DOMAIN_PORTAINER
    echo -n "Informe o domínio para acessar a Evolution API (ex: api.seudominio.com): "
    read DOMAIN_EVOLUTION
    echo -n "Informe o domínio para acessar o n8n (ex: workflows.seudominio.com): "
    read DOMAIN_N8N
    echo -n "Informe o usuário do n8n: "
    read N8N_USER
    N8N_PASS=$(input_password "n8n")
    PORTAINER_PASS=$(input_password "Portainer")
}

cria_docker_compose() {
    clear
    echo -e "$verde Gerando arquivo docker-compose.yml com as configurações fornecidas... $reset"
    mkdir -p ~/server-automation
    cd ~/server-automation || exit

    cat > docker-compose.yml <<EOF
version: "3.8"

services:
  traefik:
    image: traefik:v3.4
    container_name: traefik
    command:
      - --entrypoints.web.address=:80
      - --entrypoints.websecure.address=:443
      - --providers.docker=true
      - --api.dashboard=true
      - --certificatesresolvers.myresolver.acme.tlschallenge=true
      - --certificatesresolvers.myresolver.acme.email=seu-email@dominio.com
      - --certificatesresolvers.myresolver.acme.storage=/letsencrypt/acme.json
    ports:
      - "80:80"
      - "443:443"
      - "8080:8080"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - traefik-certificates:/letsencrypt
    restart: unless-stopped

  portainer:
    image: portainer/portainer-ce:latest
    command: -H unix:///var/run/docker.sock
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - portainer_data:/data
    environment:
      - ADMIN_PASSWORD=${PORTAINER_PASS}
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.portainer.rule=Host(\`${DOMAIN_PORTAINER}\`)"
      - "traefik.http.routers.portainer.entrypoints=websecure"
      - "traefik.http.routers.portainer.tls.certresolver=myresolver"
      - "traefik.http.services.portainer.loadbalancer.server.port=9000"
    restart: unless-stopped

  evolution_api:
    image: sua-imagem-evolution:latest
    environment:
      - SOME_ENV_VAR=value
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.evolution.rule=Host(\`${DOMAIN_EVOLUTION}\`)"
      - "traefik.http.routers.evolution.entrypoints=websecure"
      - "traefik.http.routers.evolution.tls.certresolver=myresolver"
      - "traefik.http.services.evolution.loadbalancer.server.port=3000"
    restart: unless-stopped

  n8n:
    image: n8nio/n8n
    environment:
      - N8N_BASIC_AUTH_ACTIVE=true
      - N8N_BASIC_AUTH_USER=${N8N_USER}
      - N8N_BASIC_AUTH_PASSWORD=${N8N_PASS}
      - WEBHOOK_TUNNEL_URL=https://${DOMAIN_N8N}/
    ports:
      - "5678:5678"
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.n8n.rule=Host(\`${DOMAIN_N8N}\`)"
      - "traefik.http.routers.n8n.entrypoints=websecure"
      - "traefik.http.routers.n8n.tls.certresolver=myresolver"
      - "traefik.http.services.n8n.loadbalancer.server.port=5678"
    restart: unless-stopped

volumes:
  traefik-certificates:
  portainer_data:
EOF
}

sobe_stack() {
    clear
    echo -e "$verde Iniciando os containers via docker-compose... $reset"
    sudo docker-compose up -d
}

instrucoes_finais() {
    clear
    echo -e "$verde Setup concluído! Acesse os serviços nos domínios configurados: $reset"
    echo -e "${amarelo}Portainer: https://${DOMAIN_PORTAINER}${reset}"
    echo -e "${amarelo}Evolution API: https://${DOMAIN_EVOLUTION}${reset}"
    echo -e "${amarelo}n8n: https://${DOMAIN_N8N}${reset}"
}

# Execução

nome_aviso
atualiza_sistema
instala_docker
coleta_dados
cria_docker_compose
sobe_stack
instrucoes_finais
