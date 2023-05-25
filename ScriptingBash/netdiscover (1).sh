#!/bin/bash
#Escaneo de red

#Determinar segmento de red
which ifconfig && { echo "comando ifconfig existe...";
                    direccion_ip= `ifconfig |grep inet | grep -v “127.0.0.1” |awk '{ print $2}'`;
                    echo " Esta es tu direccion ip: " $direccion_ip;
                    subred=`ifconfig |grep inet | grep -v “127.0.0.1” |awk '{ print $2}'|awk -F. '{ print $1"."$2"."$3"."}'`;
                    echo "Esta es tu subred" $subred;
                    }\
                ||  { echo "No exites el comando if confing...usando ip ";
                    direccion_ip=`ip addr show |grep inet| grep -v "127.0.0.1"|awk '{ print $2}'`;
                    echo "Esta es tu direccion ip: " $direccion_ip;  
                    subred=`ip addr show |grep inet| grep -v "127.0.0.1"|awk '{ print $2}'|awk -F. '{print $1"."$2"."$3"."}'`;
                    echo "Esta es tu subred: " $subred;
                    
                }
for ip in {1..254}
do
    ping -q -c 4 ${subred}${ip} > /dev/null
    if [ $? -eq 0 ]
    then
        echo "Host responde: " ${subred}${ip}
    fi
done

#!/bin/bash 
# Script <netdiscover.sh> 
# <09/03/2023> - <Brandon Yahir Flores Garcia> 
# 