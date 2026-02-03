#! /bin/bash
# Política por defecto: bloquear todo lo entrante
sudo iptables -P INPUT DROP

# Permitir tráfico de loopback (necesario para el sistema)
sudo iptables -A INPUT -i lo -j ACCEPT

# Permitir conexiones ya establecidas o relacionadas
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# (Opcional) Permitir puertos específicos que tú quieras abrir
# Ejemplo: permitir SSH
# sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

