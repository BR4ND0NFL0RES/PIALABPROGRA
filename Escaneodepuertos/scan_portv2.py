#importando
import socket

#funcion para probar los puertos 
def scan(addr,port):
    socket_obj=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    socket.setdefaulttimeout(1)
    result=socket_obj.connect_ex((addr,port))
    socket_obj.close
    return result

#puertos a escanear 
ports=[21,22,25,80]

for i in range(1,255):
    addr="192.168.0.{}".format(i)
    for port in ports:
        result=scan(addr, port)
        if result==0:
            print(addr,port,"OK")
        else:
            print(addr,port,"Failed")
            

#scan_portv2
#Brandon Yahir Flores Garcia 
#2037084
#Laboratorio de programacion para ciberseguridad 
