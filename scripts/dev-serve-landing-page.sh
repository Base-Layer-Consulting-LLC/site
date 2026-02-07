#!/usr/bin/env bash
set -uo pipefail

if ! command -v hugo &>/dev/null; then
  echo "[ERROR] Hugo is not installed."
  exit 1
fi

BIND_ADDR="0.0.0.0"
PORT="1313"
BASE_URL="http://localhost:${PORT}"
SITE_SRC="landing-page"
DRAFTS="false"
DRY_RUN="false"

function usage() {
  echo ""
  echo "Usage: ${0} [OPTIONS]"
  echo ""
  echo "Options:"
  echo "  -h, --help            Show this help menu."
  echo "  -b, --bind <address>  (default: 0.0.0.0) IP Address to bind to."
  echo "  -p, --port <port>     (default: 1313) TCP port to bind the site to."
  echo "  -u, --base-url <url>  (default: http://localhost:1313) Base URL for the site."
  echo "  -d, --drafts          Enable draft content."
  echo "  --dry-run             Describe actions without taking them."
  echo ""
}

while [[ $# -gt 0 ]]; do
  case $1 in
    -h|--help)
      usage
      exit 0
      ;;
    -b|--bind)
      if [[ -z $2 ]]; then
        echo "[ERROR] --bind provided, but no address given."
        exit 1
      fi

      BIND_ADDR="$2"
      shift 2
      ;;
    -p|--port)
      if [[ -z $2 ]]; then
        echo "[ERROR] --port provided, but no port number given."
        exit 1
      fi

      PORT="$2"
      shift 2
      ;;
    -u|--base-url)
      if [[ -z $2 ]]; then
        echo "[ERROR] --base-url provided, but no URL given."
        exit 1
      fi

      BASE_URL="$2"
      shift 2
      ;;
    -d|--drafts)
      DRAFTS="true"
      shift
      ;;
    --dry-run)
      DRY_RUN="true"
      shift
      ;;
    *)
      echo "[ERROR] Invalid arg: $1"
      usage
      exit 1
      ;;
  esac
done

cmd=(hugo server --bind "$BIND_ADDR" --port "${PORT}" --baseURL "${BASE_URL}" --source "${SITE_SRC}" --appendPort=false)

if [[ "$DRAFTS" == "true" ]]; then
  cmd+=(-D)
fi

if [[ "${DRY_RUN}" == "false" ]]; then
  echo "Serving Hugo site in development mode. Drafts enabled: ${DRAFTS}"
  echo "Command:"
  echo "  ${cmd[*]}"
  echo ""

  "${cmd[@]}"
else
  echo "[DRY RUN] Would run command:"
  echo "  ${cmd[*]}"

  exit 0
fi

if [[ $? -ne 0 ]]; then
  echo "[ERROR] Failed to serve Hugo site."
  exit 1
fi
