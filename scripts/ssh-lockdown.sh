#!/bin/bash

echo "🔒 Iniciando lockdown do SSH..."

# Backup do sshd_config
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bkp

# Edita configurações críticas
sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo sed -i 's/^PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo sed -i 's/^#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/^PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/^#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config

# Reinicia serviço SSH
sudo systemctl restart ssh

echo "✅ SSH configurado para aceitar apenas chave pública e sem root remoto."
