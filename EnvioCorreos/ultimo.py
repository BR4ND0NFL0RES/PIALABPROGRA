import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

enviar="pruebalabprogra@gmail.com"
recibe="yahbra20012004@gmail.com"


conn = smtplib.SMTP("smtp.gmail.com",587)
conn.ehlo()
conn.starttls()
conn.login("pruebalabprogra@gmail.com","ojrpubwcnlsumnpn")

mensaje=MIMEMultipart("alternatives")
mensaje["subject"]="Prueba de envio scrip-2037084"

text = "Practica 12 \nEjercicio de la practica 12 envio de correos \nAlumno:Brandon Yahir Flores García \nMatricula:2037084"
html = """/
        <html>
            <head>
            </head>
            <body>
                <p>Hi<br>
                aqui esta algo de texto</i>
                </p>
                <tabel>
                    <tr>
                        <th><img src="file:///C:/Users/Hp/Desktop/FCFM/LabProgra/practica12/fcfm_cool.html"</th>
                    </tr>
                    <tr>
        </html>"""

textoparte=MIMEText(text,"plain")
htmlparte=MIMEMultipart(html,"html")
#mensaje.attach(textoparte,htmlparte)se supone que aqui se agregaria la imagen pero me marcaba error, asi que solo pude enviar el texto en html 
mensaje.attach(textoparte)
conn.sendmail("pruebalabprogra@gmail.com","gerardo.bernal@uanl.edu.mx ",mensaje.as_string())
conn.quit()

#Envio de correo
#Brandon Yahir Flores Garcia 
#2037084
#Laboratorio de programacion para ciberseguridad 

