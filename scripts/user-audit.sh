#!/bin/bash

echo "🔍 Iniciando auditoria de usuários..."

echo -e "\n👥 Usuários com shell ativo:"
cat /etc/passwd | grep '/bin/bash'

echo -e "\n📂 Tentativas de login recentes:"
sudo grep "Failed\|Accepted" /var/log/auth.log | tail -n 15

echo -e "\n🚨 Verificando se há outros usuários com UID 0:"
awk -F: '($3 == 0) { print }' /etc/passwd

echo -e "\n✅ Auditoria concluída."
