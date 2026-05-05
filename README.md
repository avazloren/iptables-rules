# Description

This small script sets up basic iptables rules to harden the security of a Linux server.

By default, it blocks any incoming connection that has not been previously established or related.

# Crontab

Keep in mind that the rules will be removed every time the system reboots, so you can automate them with crontab.

## Open crontab

```
sudo crontab -e
```

## Add a line with the script path

```
@reboot /route-of-set-iptables.sh
```

# Turn off the firewall

Simply run `off-firewall.sh`.


