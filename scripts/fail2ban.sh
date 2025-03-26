#!/bin/bash

echo "🔐 Iniciando instalação e configuração do Fail2Ban..."

# Atualiza pacotes
sudo apt update -y

# Instala o Fail2Ban
sudo apt install fail2ban -y

# Cria backup do arquivo original (boas práticas)
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.conf.bkp

# Copia a config principal como .local
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

# Reinicia o serviço
sudo systemctl enable fail2ban
sudo systemctl restart fail2ban

# Verifica se o serviço está rodando
echo -e "\n🟢 Status do Fail2Ban:"
sudo systemctl status fail2ban | grep Active

# Verifica se o filtro do SSH está ativo
echo -e "\n📊 Status do jail SSH:"
sudo fail2ban-client status sshd

echo -e "\n✅ Fail2Ban instalado e configurado com sucesso!"
