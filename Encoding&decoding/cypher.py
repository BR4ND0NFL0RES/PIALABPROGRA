from cryptography.fernet import Fernet

#Generacion de llave

def genwrite():
    key = Fernet.generate_key()
    with open("pass.key","wb") as key_file:
        key_file.write(key)


genwrite()

def call_key():
    return open("pass.key","rb").read()

key = call_key()
banner="Hola esta es la practica 7, como estas".encode()
a=Fernet(key)
coded_banner=a.encrypt(banner)



print (coded_banner)

key= call_key()
b=Fernet(key)
decoded_banner=b.decrypt(coded_banner)
print (decoded_banner)

#Brandon Yahir Flores Garcia
#Matricula:2037084
