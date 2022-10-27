#!/bin/bash
sudo apt update && apt upgrade -y
sudo apt install haproxy -y
systemctl enable haproxy
cp /var/www/haproxy.cfg /etc/haproxy/haproxy.cfg