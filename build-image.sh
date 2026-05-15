#!/bin/bash
# CREATED BY RUBEN TRUJILLO - ABR 01 2026
# UPDATED BY RUBEN TRUJILLO - MAY 14 2026
clear

# VARIABLES
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/.env"
source "$ENV_FILE"

echo "----------------------------------------------"
echo " DOWEBMX SAAS ENVIRONMENT BUILD IMAGE STARTED "
echo "----------------------------------------------"

docker build --no-cache --pull \
-t dowebmx/cloud-erp:${DOLI_VERSION}-php${PHP_VERSION}-rev${REVISION} \
-t dowebmx/cloud-erp:latest \
.

echo "------------------------------------------------"
echo " DOWEBMX SAAS ENVIRONMENT BUILD IMAGE COMPLETED "
echo "------------------------------------------------"