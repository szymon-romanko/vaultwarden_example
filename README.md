# Vaultwarden & Caddy - config example

Very basic example how to set up vaultwarden with caddy as reverse proxy using docke compose

## Requirements

- git
- docker
- internet connection during installation (to download docker images)

## Installation

1. Clone repo
    ```shell
    git clone https://github.com/szymon-romanko/vaultwarden_example.git
    cd vaultwarden_example
    ```

2. Setup TLS certificates

   **For development** - generate self-signed certificates
    ```shell
    chmod u+x ./generate_certs.sh
    ./generate_certs.sh
    ls certs/  # verify they are generated
    ```

   **For production** - use your own certificates
    ```shell
    cp /path/to/your/cert.pem certs/cert.pem
    cp /path/to/your/key.pem certs/key.pem
    vi docker-compose.yml  # change paths to your certificates
    ```

3. Start services
    ```shell
    docker compose up -d
    ```
