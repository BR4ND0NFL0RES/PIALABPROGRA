clear-host

write-host "Bienvenido a un ejemplo de Codificacion/Decodificacion base 64 usando powershell" -ForegroundColor Green
write-host "Codificando un archivo de texto "

$inputfile= "C:\Users\Hp\Desktop\FCFM\LabProgra\practica7\secret.txt"
$fc = get-content $inputfile
$GB= [System.Text.Encoding]::UTF8.GetBytes($fc)
$etext=[System.Convert]::ToBase64String($GB)

write-host "El archivo del contenido codificado es: " $etext-ForegroundColor Green


write-host "Decodificando el texto previo "
[System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($etext)) | Out-File -Encoding "ASCII" C:\Users\Hp\Desktop\FCFM\LabProgra\practica7\decode_secret.txt


$outfile12= get-content C:\Users\Hp\Desktop\FCFM\LabProgra\practica7\decode_secret.txt
write-Host "El texto decodificado es el siguiente: "-ForegroundColor Green
write-host "DECODIFICADO: "$outfile12


<#Nombre:Brandon Yahir Flores García
Matricula:2037084
Laboratorio de programacion
Clase:61 #>