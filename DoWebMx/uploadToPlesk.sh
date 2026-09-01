#!/bin/bash
# CREATED BY RUBEN TRUJILLO - ABR 01 2026
# UPDATED BY RUBEN TRUJILLO - AGO 31 2026
clear

# VARIABLES
IMAGE_FILE="dowebmx-erp.tar.gz"        # Nombre de tu archivo local
REMOTE_USER="ruben"                     # Usuario SSH (root recomendado en Plesk)
REMOTE_PATH="/tmp"                     # Carpeta temporal en el servidor
# SERVERS=("10.7.0.1" "198.71.58.17") # Lista de IPs de tus servidores
SERVERS=("198.71.58.17") # Lista de IPs de tus servidores

SOCKET_DIR="$HOME/.ssh/sockets"

# CREAR LA CARPETA SI NO EXISTE
if [ ! -d "$SOCKET_DIR" ]; then
    mkdir -p "$SOCKET_DIR"
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/.env"
source "$ENV_FILE"

cd target

echo "----------------------------------------"
echo " DOWEBMX SAAS EXPORTING PROCESS STARTED "
echo "----------------------------------------"

echo 
echo "Cleaning previous files..."
rm $SCRIPT_DIR/target/*

echo
echo "Saving docker image..."
docker save -o dowebmx-erp.tar dowebmx/cloud-erp:${DOLI_VERSION}-php${PHP_VERSION}-rev${REVISION} dowebmx/cloud-erp:latest

echo
echo "Compressing image..."
gzip dowebmx-erp.tar

for SERVER in "${SERVERS[@]}"
do
	echo
	echo ":lock: Preparing secure tunel"
	SOCKET="$SOCKET_DIR/%r@%h:%p"

	ssh -M -S "$SOCKET" -f -N "$REMOTE_USER@$SERVER"

	echo
	echo "Uploading image to server..."			
	scp -o "ControlPath=$SOCKET" "$IMAGE_FILE" "$REMOTE_USER@$SERVER:$REMOTE_PATH/"
	echo "------------------------------------------"

	echo
	echo "🐳 Installing image in Docker, this task can take several minutes"	
	ssh -S "$SOCKET" "$REMOTE_USER@$SERVER" "docker load -i $REMOTE_PATH/$IMAGE_FILE && rm $REMOTE_PATH/$IMAGE_FILE"
	# ssh -S "$SOCKET" "root@$SERVER" "docker load -i $REMOTE_PATH/$IMAGE_FILE && rm $REMOTE_PATH/$IMAGE_FILE"
	echo "------------------------------------------"

	# echo
	# echo "🧹 Cleaning remote temporal files..."	
	# ssh -S "$SOCKET" "$REMOTE_USER@$SERVER" "rm $REMOTE_PATH/$IMAGE_FILE"
	# echo "------------------------------------------"

	ssh -S "$SOCKET" -O exit "$REMOTE_USER@$SERVER"
	echo "✅ Process completed on en $SERVER"

done

cd ..

echo "------------------------------------------"
echo " DOWEBMX SAAS EXPORTING PROCESS COMPLETED "
echo "------------------------------------------"