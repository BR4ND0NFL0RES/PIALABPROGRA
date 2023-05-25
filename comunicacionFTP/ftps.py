#scrip para transferencia
#objetivo: conectarse a debian y hacer upload de una archivo 
#20/04/2023       Brandon Yahir Flores García

#importar modulo
from ftplib import FTP

#Conectando a maquina debian
ftp= FTP("10.0.0.1")

#Iniciando sesion 
ftp.login ("johnny","2037084")

#listando
ftp.retrlines("LIST") 

#Cambiando de directorio
ftp.cwd("upload")

#Transfiriendo el archivo
ftp.storlines("ADVERTENCIA.txt", text_file)

#Saliendo 
ftp.quit()
