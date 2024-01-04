#!/bin/bash

echo "Uninstall service..."
sudo systemctl stop logging.service
sudo systemctl disable logging.service
sudo systemctl daemon-reload
sudo rm -f /etc/systemd/system/logging.service