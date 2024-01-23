# keepalive

A simple container to ping the VPN server to ensure the WireGuard VPN keepalive 
if the public IP of the client always change.

## Usage

For docker:
```sh
DESTINATION="172.16.0.1" ./start.sh
```

For Kuebrnetes:
```sh
# Create the 'keepalive' namespace
kubectl create namespace keepalive

# Modify the destination IP in keepalive.yaml
vim keepalive.yaml

# Apply the keepalive daemonset
kubectl apply -f keepalive.yaml
```

## License
 
MIT
