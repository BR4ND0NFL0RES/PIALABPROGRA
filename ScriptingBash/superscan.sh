#!/bin/bash
#
# Ejemplo de Menu en BASH
#
date
    echo "|"
    echo "|---------------------------|"
    echo "|   Menu Principal          |"
    echo "|---------------------------|"
    echo "|1. Net Discover"
    echo "|2. portscan"
    echo "|3. welcome"
    echo "|4. Actual User"
    echo "|5. Hostname"
    echo "|6. Exit"
    echo "|"
read -p "Opción  [ 1 - 6 ] " c
case $c in
        1) $HOME/Escritorio/Scriptssss/netdiscover.sh ;;
        2) $HOME/Escritorio/Scriptssss/portscanv1.sh 10.0.2.15 ;;
        3) $HOME/Escritorio/Scriptssss/welcome.sh ;;
        4) whoami;;
        5) echo "Tu host es:"
                hostname
                echo "saludos";;
        6) echo "Bye!"; exit 0;;
esac

#!/bin/bash 
# Script <superscanv1.sh> 
# <08/03/2023> - <Brandon Yahir Flores Garcia> 
# 