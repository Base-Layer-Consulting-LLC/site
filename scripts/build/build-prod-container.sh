#!/usr/bin/env bash
set -euo pipefail

if ! command -v docker &>/dev/null; then
  echo "[ERROR] Docker is not installed." >&2
  exit 1
fi

THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT=$(realpath -m "$THIS_DIR/../..")
DOCKERFILE="${REPO_ROOT}/.containers/prod/Dockerfile"
IMG_TAG="base-layer"
CONTEXT_PATH="./site"

cmd=(docker build -f "${DOCKERFILE}" -t "${IMG_TAG}" "${CONTEXT_PATH}")

echo ""
echo "Building Production image."
echo "Command:"
echo "  ${cmd[*]}"
echo ""

if ! "${cmd[@]}" >&2; then
  echo ""
  echo "[ERROR] Failed building Production image." &>2
  exit 1
else
  echo ""
  echo "Build success."

  exit 0
fi
