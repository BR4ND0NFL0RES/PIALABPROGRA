import requests
import json

#Nombre: Brandon Yahir Flores Garcia
#Matricula: 2037084

if __name__=='__main__':
    url= 'https://httpbin.org/post'
    argumentos={'nombre':'Brandon','matricula':'2037084','curso':'Programacion para ciberseguridad'}

    response=requests.post(url, params=argumentos)

    if response.status_code==200:
        print(response.content)