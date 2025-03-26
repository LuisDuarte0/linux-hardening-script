# 🛡️ Secure Linux Baseline – Endurecimento de Segurança para Servidores Ubuntu

Este repositório é uma base prática de **hardening e automação de segurança** em servidores Linux.  
O objetivo é fornecer um conjunto de scripts que implementam boas práticas de **cibersegurança, infraestrutura e automação com shell script**, com foco no Ubuntu Server.

---

## Objetivo do Projeto

Desenvolver diferentes inteligências técnicas e estratégicas

- Práticas de hardening, SSH seguro, firewall, monitoramento de usuário
- Administração de Sistemas Linux (comandos, serviços, permissões, logs)
- **⚙️ Shell Scripting**: automação de tarefas administrativas e de segurança
- **📡 Redes**: controle de portas e protocolos, proteção de acesso remoto
- **🔧 Troubleshooting real**: instalação e configuração de VMs, teclado, rede, UFW e SSH manualmente

---

## 🔧 Scripts Disponíveis

Todos os scripts estão localizados na pasta [`/scripts`](./scripts):

| Script                | Função                                                                 |
|-----------------------|------------------------------------------------------------------------|
| `hardening.sh`        | Script principal com boas práticas básicas de segurança para o sistema |
| `fail2ban.sh`         | Instala e configura o Fail2Ban para proteção contra ataques de força bruta no SSH |
| `ssh-lockdown.sh`     | Restringe o acesso remoto ao servidor, desativando autenticação por senha |
| `ufw-monitor.sh`      | Exibe regras do firewall UFW, portas abertas e serviços escutando       |
| `user-audit.sh`       | Realiza auditoria dos usuários, acessos recentes e permissões elevadas |

---

