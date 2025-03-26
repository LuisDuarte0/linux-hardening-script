# 🔐 Script de Hardening Básico para Servidores Linux

## 🧠 Sobre o Projeto

Este repositório apresenta um script Bash simples e funcional que realiza práticas fundamentais de **hardening** (endurecimento de segurança) em servidores Linux, mais especificamente no Ubuntu Server 24.04.2 LTS.

A ideia surgiu da necessidade de consolidar práticas reais de segurança da informação, desde a configuração manual de uma VM, até a conexão via SSH e aplicação de melhorias diretas no sistema.

Tudo foi feito do zero, incluindo:

- Instalação manual da máquina virtual
- Configuração de teclado e rede
- Acesso remoto via SSH
- Criação e execução de um script de hardening com boas práticas

O projeto visa demonstrar conhecimento prático em **segurança, infraestrutura e automação**.

---

## ⚙️ O que o Script Faz

- Atualiza todos os pacotes do sistema
- Ativa e configura o firewall UFW, liberando apenas a porta do SSH
- Desabilita o login remoto via root
- Corrige permissões sensíveis dos arquivos `/etc/passwd` e `/etc/shadow`
- Apresenta mensagens visuais a cada etapa do processo

---

## 📸 Demonstrações

### 🔹 Código do Script

![imagem1](./imagem1.png)

---

### 🔹 Acesso remoto via SSH

Conexão feita pelo terminal do Windows usando IP local da VM:

![imagem2](./imagem2.png)

---

### 🔹 Execução do Script com sucesso

Mensagem de conclusão e alterações aplicadas corretamente:

![imagem3](./imagem3.png)

---

