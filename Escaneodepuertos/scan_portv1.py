#importando
import sys
from socket import *
#Argumentos
host=sys.argv[1]
portstrs=sys.argv[2].split('-')

#rango de puertyos en lista
start_port=int(portstrs[0])
end_port= int(portstrs[1])
#puerts abiertos
target_ip=gethostbyname(host)
opened_ports=[]

for port in range(start_port, end_port):
    sock=socket(AF_INET, SOCK_STREAM)
    sock.settimeout(10)
    result=sock.connect_ex((target_ip, port))
    if result==0:
        opened_ports.append(port)
        
print("Puertos abiertos: ")

for i in opened_ports:
    print(i) 

#scan_portv1
#Brandon Yahir Flores Garcia 
#2037084
#Laboratorio de programacion para ciberseguridad 

    
