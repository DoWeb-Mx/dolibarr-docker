#!/bin/bash
# CREATED BY RUBEN TRUJILLO - ABR 01 2026
# UPDATED BY RUBEN TRUJILLO - MAY 14 2026
clear

# VARIABLES
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/.env"
source "$ENV_FILE"

echo "----------------------------------------"
echo " DOWEBMX SAAS EXPORTING PROCESS STARTED "
echo "----------------------------------------"

rm ./target/*
docker save -o ./target/dowebmx-erp.tar dowebmx/cloud-erp:${DOLI_VERSION}-php${PHP_VERSION}-rev${REVISION} dowebmx/cloud-erp:latest
gzip ./target/dowebmx-erp.tar

echo "------------------------------------------"
echo " DOWEBMX SAAS EXPORTING PROCESS COMPLETED "
echo "------------------------------------------"