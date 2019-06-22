# systemctl

```sh
# help
sudo systemctl -help

# lifecycle
sudo systemctl daemon-reload

# unit file
sudo systemctl enable docker.service
sudo systemctl disable docker.service
sudo systemctl list-units --type=service

# unit
sudo systemctl start docker.service
sudo systemctl restart docker.service
sudo systemctl stop docker.service
sudo systemctl status docker.service
```