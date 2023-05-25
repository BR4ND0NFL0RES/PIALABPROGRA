$subred=(Get-NetRoute -DestinationPrefix 0.0.0.0/0).NextHop 
write-host "Determinando Tu gateway..."

write-host "Tu gateway es: "$subred

$rango=$subred.substring(0,$subred.Indexof('.') + 1 + $subred.substring($subred.Indexof('.') + 1).IndexOf('.')+ 3)
write-host "Determinando Tu subred..."
echo $rango

$punto=$rango.Endswith('.')


if ( $punto -like "False")
{
	$rango = $rango + '.'
}


$portstoscan=@(20,21,22,23,25,50,51,53,80,110,119,135,136,137,138,139,143,161,162,389,443,445,636,1025,1443,3389,5985,5986,8080,10000)

$waittime

write-host "Direccion ip a escanear: " -NoNewline
$direccion=Read-Host

foreach ($p in $portstoscan)
{
	$TCPObject = New-object System.Net.Sockets.TcpClient
		try{ $resultado = TCPObject.ConnectAsync($direccion,$p).Wait($waittime)}catch{}
		if ($resultado -eq "True")
		{
			write-host "Puerto abierto: " -NoNewLine; Write-Host $p -ForegroundColor Green
		}
}

#Brandon Yahir Flores Garcia
#Matricula:2037084