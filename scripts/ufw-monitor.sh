#!/bin/bash

echo "🔥 Monitorando Firewall UFW..."

echo -e "\n📋 Regras do UFW:"
sudo ufw status numbered

echo -e "\n🧩 Serviços ativos que usam rede:"
sudo ss -tunlp

echo -e "\n📡 Portas abertas externamente:"
sudo lsof -i -P -n | grep LISTEN

echo -e "\n✅ Monitoramento completo!"
