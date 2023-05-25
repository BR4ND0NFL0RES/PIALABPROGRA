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


$rango_ip = @(1..254)

write-host ""
write-host "Subred actual: "
write-host "Escaneando: " -NoNewline ; write-host $rango -NoNewline; Write-Host "0/24" -ForegroundColor Red
write-host ""

foreach ( $r in $rango_ip )
{
	$actual=$rango + $r
	$responde = Test-Connection $actual -Quiet -Count 1
	if ($responde -eq "True")
	{
		write-output ""
		write-Host "Host responde: " -NoNewLine; Write-Host $actual -ForegroundColor Green
	}
}	

#Brandon Yahir Flores García
#Matricula:2037084