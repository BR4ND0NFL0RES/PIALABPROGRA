$subred=(Get-NetRoute -DestinationPrefix 0.0.0.0/0).NextHop  
write-host "Tu gateway es: "$subred

$rango=$subred.substring(0,$subred.Indexof('.') + 1 + $subred.substring($subred.Indexof('.') + 1).IndexOf('.')+ 3)

$punto=$rango.Endswith('.')


if ( $punto -like "False")
{
	$rango = $rango + '.'
}


$rango_ip = @(1..254)

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

