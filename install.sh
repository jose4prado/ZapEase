#!/bin/bash

set -e

echo "Atualizando sistema..."
sudo apt update && sudo apt upgrade -y

echo "Instalando dependências..."
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

echo "Adicionando chave e repositório Docker..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "Instalando Docker CE..."
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

echo "Instalando Docker Compose..."
DOCKER_COMPOSE_VERSION=2.22.3
sudo curl -L "https://github.com/docker/compose/releases/download/v${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Adicionando seu usuário ao grupo docker (execute logout/login para aplicar)..."
sudo usermod -aG docker $USER

echo "Criando diretório para o projeto..."
mkdir -p ~/server-automation
cd ~/server-automation

echo "Salvando docker-compose.yml..."
cat > docker-compose.yml << 'EOF'
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
    container_name: portainer
    command: -H unix:///var/run/docker.sock
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - portainer_data:/data
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.portainer.rule=Host(`painel.seudominio.com`)"
      - "traefik.http.routers.portainer.entrypoints=websecure"
      - "traefik.http.routers.portainer.tls.certresolver=myresolver"
      - "traefik.http.services.portainer.loadbalancer.server.port=9000"
    restart: unless-stopped

  evolution_api:
    image: sua-imagem-evolution:latest
    container_name: evolution_api
    environment:
      - SOME_ENV_VAR=value
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.evolution.rule=Host(`api.seudominio.com`)"
      - "traefik.http.routers.evolution.entrypoints=websecure"
      - "traefik.http.routers.evolution.tls.certresolver=myresolver"
      - "traefik.http.services.evolution.loadbalancer.server.port=3000"
    restart: unless-stopped

  n8n:
    image: n8nio/n8n
    container_name: n8n
    environment:
      - N8N_BASIC_AUTH_ACTIVE=true
      - N8N_BASIC_AUTH_USER=usuario
      - N8N_BASIC_AUTH_PASSWORD=senha_secreta
      - WEBHOOK_TUNNEL_URL=https://workflows.seudominio.com/
    ports:
      - "5678:5678"
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.n8n.rule=Host(`workflows.seudominio.com`)"
      - "traefik.http.routers.n8n.entrypoints=websecure"
      - "traefik.http.routers.n8n.tls.certresolver=myresolver"
      - "traefik.http.services.n8n.loadbalancer.server.port=5678"
    restart: unless-stopped

volumes:
  traefik-certificates:
  portainer_data:
EOF

echo "Subindo stack com Docker Compose..."
sudo docker-compose up -d

echo "Instalação completa!"
