#!/bin/bash
# CREATED BY RUBEN TRUJILLO - ABR 01 2026
# UPDATED BY RUBEN TRUJILLO - MAY 15 2026
clear

# VARIABLES
IMAGE_FILE="dowebmx-erp.tar.gz"        # Nombre de tu archivo local
REMOTE_USER="root"                     # Usuario SSH (root recomendado en Plesk)
REMOTE_PATH="/tmp"                     # Carpeta temporal en el servidor
# SERVERS=("10.7.0.1" "198.71.58.17") # Lista de IPs de tus servidores
SERVERS=("10.7.0.1") # Lista de IPs de tus servidores

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/.env"
source "$ENV_FILE"

cd target

echo "----------------------------------------"
echo " DOWEBMX SAAS EXPORTING PROCESS STARTED "
echo "----------------------------------------"

echo 
echo "🧹 Cleaning previous files..."
rm $SCRIPT_DIR/target/*

echo
echo "📦 Saving docker image..."
docker save -o dowebmx-erp.tar dowebmx/cloud-erp:${DOLI_VERSION}-php${PHP_VERSION}-rev${REVISION} dowebmx/cloud-erp:latest

echo
echo "📦 Compressing image..."
gzip dowebmx-erp.tar

for SERVER in "${SERVERS[@]}"
do
	echo
	echo "📦 Uploading image to server..."	
	echo "$IMAGE_FILE" "$REMOTE_USER@$SERVER:$REMOTE_PATH/"
	echo
	scp "$IMAGE_FILE" "$REMOTE_USER@$SERVER:$REMOTE_PATH/"

	echo
	echo "🐳 Installing image in Docker, this task can take several minutes"
	echo "$REMOTE_USER@$SERVER" "sudo docker load -i $REMOTE_PATH/$IMAGE_FILE"
	echo
	ssh "$REMOTE_USER@$SERVER" "sudo docker load -i $REMOTE_PATH/$IMAGE_FILE"

	echo
	echo "🧹 Cleaning remote remporal files..."
	echo "$REMOTE_USER@$SERVER" "rm $REMOTE_PATH/$IMAGE_FILE"
	echo
	ssh "$REMOTE_USER@$SERVER" "rm $REMOTE_PATH/$IMAGE_FILE"

done

cd ..

echo "------------------------------------------"
echo " DOWEBMX SAAS EXPORTING PROCESS COMPLETED "
echo "------------------------------------------"