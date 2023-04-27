#!/bin/bash

function read_conf {
    read -p "Please input inbound port: " port
    id=$(uuidgen)
    echo "port is $port"
    echo "id is $id"
}

function to_file 
{
    file_path=/usr/local/etc/vray/config.json
    rm -rf ${file_path}
(
cat <<EOF
{
    "inbounds": [{
        "port": $port,
        "protocol": "vmess",
            "settings": {
            "clients": [{ "id": "$id" }]
            }
        }],
    "outbounds": [{
        "protocol": "freedom",
        "settings": {}
    }]
}
EOF
) > ${file_path}
}

function install_uuidgen
{
    if ![-x "$(command -v uuidgen)"]; then
        apt install uuid-runtime
}

install_uuidgen
read_conf
to_file
