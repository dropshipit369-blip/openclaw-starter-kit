#!/usr/bin/env bash
set -euo pipefail
echo "[1/5] installing openclaw"; npm install -g openclaw@latest
echo "[2/5] creating directories"; mkdir -p ~/.openclaw ~/openclaw-workspaces/{orchestrator,builder}
echo "[3/5] copying config and workspaces"; cp ./config/openclaw.json ~/.openclaw/openclaw.json; cp -R ./workspaces/* ~/openclaw-workspaces/
echo "[4/5] validate"; openclaw config validate
echo "[5/5] install + status"; openclaw gateway install || true; openclaw status || true
echo "done"
