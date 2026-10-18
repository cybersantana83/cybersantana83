#!/usr/bin/env bash
# Ajusta bio, descrições e topics dos repositórios via GitHub CLI.
# Requisito: gh instalado e autenticado (gh auth login).
set -euo pipefail

USER="cybersantana83"

echo ">> Atualizando bio do perfil"
gh api -X PATCH user \
  -f bio="Cyber Security Engineer · IAM/IGA · SRE · Hardware hacking (NFC/RFID). Criador do Café com Solda." \
  -f blog="https://www.instagram.com/cafecomsoldalab" \
  >/dev/null

echo ">> cyberlab-local"
gh repo edit "$USER/cyberlab-local" \
  --description "Laboratório de pentest em Docker Compose: DVWA, Juice Shop, WebGoat, Kali, Metasploitable e alvo SNMP/LDAP." \
  --add-topic pentest-lab,docker,docker-compose,cybersecurity,dvwa,juice-shop,webgoat,kali-linux,metasploitable,education

echo ">> ChaosID"
gh repo edit "$USER/ChaosID" \
  --add-topic flipper-zero,flipper-zero-app,nfc,rfid,forensics,hardware-security,cybersecurity

echo ">> chaos-nfc"
gh repo edit "$USER/chaos-nfc" \
  --add-topic nfc,rfid,m5stack,esp32,mifare,desfire,ntag,firmware,hardware-security

echo ">> fido2-nfc-scanner"
gh repo edit "$USER/fido2-nfc-scanner" \
  --add-topic flipper-zero,flipper-zero-app,fido2,ctap2,webauthn,yubikey,nfc,hardware-security

echo "Pronto."
