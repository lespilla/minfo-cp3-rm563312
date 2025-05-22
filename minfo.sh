#!/bin/bash
case "$1" in
    hostname)
        hostname
        ;;
    uptime)
        uptime -p
        ;;
    disk)
        df -h /
        ;;
    all)
        echo "Hostname:"
        hostname
        echo -e "\nUptime:"
        uptime -p
        echo -e "\nDisk:"
        df -h /
        ;;
*)
    echo "Uso: ./minfo.sh {hostname|uptime|disk|all}"
    exit 1
    ;;
esac
