#!/bin/bash
set -e
set -a


# Load deployment variables
source "./env_vars_prod.sh"

SERVICE_NAME="armwrestling_training_bot@${BRANCH}.service"

echo "[Deploy] Restarting service: $SERVICE_NAME"

systemctl restart "$SERVICE_NAME"

echo "[Deploy] Done: $SERVICE_NAME is running"
