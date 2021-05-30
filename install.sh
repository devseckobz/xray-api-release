#!/bin/sh
cp . /usr/local/xrayApi -r
echo "[Unit]
Description=xrayApi
[Service]
ExecStart=/usr/local/xrayApi/xray-api -config /usr/local/xrayApi/config.yaml

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/xrayApi.service
systemctl daemon-reload
