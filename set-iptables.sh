#! /bin/bash
#(ES) Política por defecto: bloquear todo lo entrante
#(EN) Default policy: block all input traffic
sudo iptables -P INPUT DROP

#(ES) Permitir tráfico de loopback (necesario para el sistema)
#(EN) Accept loopback traffic (necessary for the system)
sudo iptables -A INPUT -i lo -j ACCEPT

#(ES) Permitir conexiones ya establecidas o relacionadas
#(EN) Allow existing or related connections
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

#(ES) (Opcional) Permitir puertos específicos que tú quieras abrir
# Ejemplo: permitir SSH
# sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

#(EN) (Optional) Allow specific ports you want to open
# Example: allow SSH
# sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

