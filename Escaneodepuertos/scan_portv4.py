import nmap

escaner = nmap.PortScanner()
scaner.scan(‘’, ’1-1024’, ‘-v -sV’ )
scaner.command_line()
scaner.all_hosts()
scaner[‘192.168.0.32’].state()
scaner[‘192.168.0.32’].all_protocols()
scaner[‘192.168.0.32’][‘tcp’].keys()
scaner[‘192.168.0.32’].has_tcp(21)
scaner[‘192.168.0.32’].has_tcp(22)

scaner[‘192.168.0.32’].[‘tcp’][22]
scaner[‘192.168.0.32’].[‘tcp’][22][product]

#scan_portv4
#Brandon Yahir Flores Garcia 
#2037084
#Laboratorio de programacion para ciberseguridad 
