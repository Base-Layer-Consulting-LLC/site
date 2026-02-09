#!/usr/bin/env bash
set -e

print_command() {
    local message=$1
    local icon=$2
    echo -e "\e[34m»»» $icon \e[32m$message\e[0m "
}

MISE=$(which mise)

if [ -z "$MISE" ]; then
    echo "[ERROR] Mise is not installed." >&2
    exit 1
fi

print_command "Setting up Mise environment"

$MISE i

print_command "Mise environment is set up"

GIT=$(which git)

# print_command "Configuring pre-commit"

# $MISE exec -- pre-commit install --install-hooks --hook-type commit-msg

# print_command "Pre-commit is configured"
# sprint_command "Configuring environment"

$GIT config --global pull.rebase false

print_command "Environment is configured"
