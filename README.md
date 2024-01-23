# keepalive

Script to restart the WireGuard VPN client to ensure the WireGuard VPN keepalive 
if the public IP of the client always change.

## Usage

```sh
# Modify the *DESTINATION* IP and *INTERFACE* name
vim wireguard_auto_reconnect.sh
# Install wireguard_auto_reconnect.sh script
cp wireguard_auto_reconnect.sh /usr/local/bin
# Install wireguard-keepalive.service
cp wireguard-keepalive.service /etc/systemd/system/

systemctl daemon-reload
systemctl enable --now wireguard-keepalive.service
```

## License

MIT
