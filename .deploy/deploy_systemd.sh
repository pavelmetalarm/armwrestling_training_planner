#!/bin/bash
set -e
set -a


# Load deployment variables
source "./env_vars_prod.sh"

SERVICE_NAME="armwrestling_training_bot@${BRANCH}.service"
TEMPLATE_PATH="../systemd/armwrestling_training_bot.service.template"
SERVICE_PATH="/etc/systemd/system/${SERVICE_NAME}"
TARGET_PATH="/etc/systemd/system/${SERVICE_NAME}"

echo "[Deploy] Generating systemd service file: $SERVICE_NAME"
envsubst < "$TEMPLATE_PATH" > "$SERVICE_PATH"

echo "[Deploy] Reloading systemd daemon"
systemctl daemon-reexec
systemctl daemon-reload

echo "[Deploy] Enabling and restarting service: $SERVICE_NAME"
systemctl enable "$SERVICE_NAME"
systemctl restart "$SERVICE_NAME"

echo "[Deploy] Done: $SERVICE_NAME is running"
