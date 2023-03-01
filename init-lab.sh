#!/bin/bash

CUR_DIR=$(pwd)
echo "[+] Current folder... $CUR_DIR"

# check data folder for mapping elasticsearch/logstash
DATA_DIR="$CUR_DIR/data"
if [ -d "$DATA_DIR" ]; then
	echo "[+] Data folder is exist"
else
	printf "[+] Creating DATA for mapping elasticsearch & logstash config\n"
	mkdir -pv "$CUR_DIR/data"
	chmod -R 755 "$CUR_DIR/data"
fi

# check docker & docker-compose exist on system
if ! command -v docker &>/dev/null; then
	printf "[x] docker could not be found\n"
	printf "[+] Please install docker at: https://docs.docker.com/engine/install/\n"
	exit
else
	printf "[+] docker installed !\n"
fi

if ! command -v docker-compose &>/dev/null; then
	printf "[x] docker-compose could not be found\n"
	printf "[+] Please install docker-compose at: https://docs.docker.com/compose/install/other/\n"
	exit
else
	printf "[+] docker-compose installed !\n"
fi

printf "[+] Please run: \`docker-compose up -d --build\` OR read README.md to start minial ELK as SIEM\n"
