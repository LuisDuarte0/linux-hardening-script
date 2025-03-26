#!/bin/bash

echo "🔧 Iniciando processo de hardening no sistema Linux..."

# Atualizando pacotes do sistema
echo "📦 Atualizando pacotes..."
sudo apt update && sudo apt upgrade -y

# Habilitando e configurando o UFW (firewall)
echo "🛡️ Ativando o firewall UFW e liberando SSH..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw enable

# Desabilitando login remoto como root via SSH
echo "🚫 Desativando login remoto do usuário root..."
sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart ssh

# Corrigindo permissões de arquivos sensíveis
echo "🔒 Corrigindo permissões de /etc/passwd e /etc/shadow..."
sudo chmod 644 /etc/passwd
sudo chmod 640 /etc/shadow

echo "✅ Hardening básico concluído com sucesso!"
