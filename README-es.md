# ℹ️Descripción

Este pequeño script configura reglas básicas de iptables para endurecer la seguridad de un servidor Linux. 

Por defecto bloquea toda conexión entrante que no haya sido establecida o relacionada anteriormente.

# 🖥️Crontab

Ten en cuenta que las reglas se eliminarán cada vez que se reinicie el equipo, para ello se puede automatizar con `crontab`.

## Abrir crontab

```
sudo crontab -e
```

## Añadir el script

```
@reboot /rute-of-set-iptables.sh
```

## 🔴Apagar el firewall

Simplemente ejecuta `off-firewall.sh`
