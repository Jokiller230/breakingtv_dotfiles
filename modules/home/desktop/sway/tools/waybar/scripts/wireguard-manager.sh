#!/usr/bin/env bash

# Code from: https://raw.githubusercontent.com/Klafyvel/wireguard-manager/refs/heads/main/wireguard-manager.sh

SERVICE_NAME="wg-quick-wg0"
STATUS_CONNECTED_STR='{"text":"Connected","class":"connected","alt":"connected"}'
STATUS_DISCONNECTED_STR='{"text":"Disconnected","class":"disconnected","alt":"disconnected"}'

function status_wireguard() {
  systemctl is-active $SERVICE_NAME >/dev/null 2>&1
  return $?
}

function toggle_wireguard() {
  status_wireguard && \
     SUDO_ASKPASS=~/.config/waybar/scripts/wireguard-manager.sh sudo -A systemctl stop $SERVICE_NAME || \
     SUDO_ASKPASS=~/.config/waybar/scripts/wireguard-manager.sh sudo -A systemctl start $SERVICE_NAME
}

case $1 in
  -s | --status)
    status_wireguard && echo $STATUS_CONNECTED_STR  || echo $STATUS_DISCONNECTED_STR
    ;;
  -t | --toggle)
    toggle_wireguard
    ;;
  *)
    askpass
    ;;
esac
