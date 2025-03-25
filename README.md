# Linux Hardening Script

Este repositório contém um script de **hardening básico para sistemas Linux**, voltado para estudantes e profissionais que desejam aplicar boas práticas de segurança em servidores.

---

## 🔐 Objetivo do Projeto

Aplicar medidas essenciais de segurança (hardening) em sistemas Linux, incluindo:
- Atualização de pacotes
- Configuração de firewall
- Restrição de acesso root remoto via SSH
- Ajuste de permissões de arquivos sensíveis

Essas ações aumentam a resiliência do sistema contra ameaças e ataques básicos.

---

## ⚖️ O que o script faz

- Atualiza os pacotes do sistema com `apt`
- Ativa o firewall UFW, bloqueando tudo exceto conexões SSH
- Garante que o login remoto com root esteja desabilitado no SSH
- Verifica e corrige permissões em `/etc/passwd` e `/etc/shadow`

---

## 🛠️ Como executar

> Recomendado rodar em uma VM Ubuntu Server (20.04 ou 22.04 LTS)

```bash
chmod +x hardening.sh
sudo ./hardening.sh
```

> ⚠️ **Atenção**: Sempre revise os comandos antes de rodar scripts de hardening em ambientes reais.

---

## 📃 Checklist de Segurança Aplicado

- [x] Atualização do sistema
- [x] Firewall ativo com regras restritivas
- [x] SSH sem acesso root remoto
- [x] Permissões reforçadas em arquivos críticos

---

## 🧐 Aprendizados

- Introdução à segurança de servidores Linux
- Scripts de automação para aplicação de boas práticas
- Entendimento das vulnerabilidades comuns em sistemas mal configurados

---

## 🔗 Referências

- [CIS Benchmarks para Linux](https://www.cisecurity.org/cis-benchmarks/)
- [OWASP Server Hardening Guidelines](https://owasp.org/www-project-server-security/)
- [Ubuntu Hardening Guide](https://wiki.ubuntu.com/Security/Features)
