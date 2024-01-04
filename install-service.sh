#!/bin/bash

echo "Create logging service..."
cat logging.service << EOF
[Unit]
Description=Python logging service
[Service]
Type=simple
Restart=always
RestartSec=5
User=root
ExecStart=/usr/bin/python3 $PWD/main.py
[Install]
WantedBy=multi-user.target
EOF

echo "Install service..."
sudo ln -s $PWD/logging.service /etc/systemd/system/logging.service

echo "Enable service..."
sudo systemctl daemon-reload
sudo systemctl enable logging.service
sudo systemctl start logging.service