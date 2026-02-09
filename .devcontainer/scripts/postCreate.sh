#!/usr/bin/env bash
set -e

print_command() {
  echo -e "\e[34m»»» \e[32m$1\e[0m"
}

MISE="$(command -v mise || true)"

if [ -z "$MISE" ]; then
  print_command "[ERROR] Mise is not installed."
  exit 1
fi

print_command "Configuring mise"

$MISE trust .
echo "eval \"\$($MISE activate bash)\"" >> /root/.bashrc

print_command "mise is configured"
