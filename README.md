# Handle several apps and service discovery

This is using Traefik to handle:

- service discovery by tags
- serving apps on ports
- handling SSL certificates (thanks to Let's Encrypt)

NB: See the Lightning notes in Notion.

# Running containers

1. Create a custom Docker network

```bash
docker network create mycoffee-network # Create a custom network
```

2. Go in `traefik/` and launch Traefik

```bash
cd traefik/ && docker compose up -d # Launch traefik with global configuration
```

3. Return in root folder and launch the wordpress and mysql Docker containers

```bash
cd ..
docker compose up -d # Launch Wordpress and Mysql and connect it to Traefik with a custom network.
```

# (Optional) Create a certificate

You will need a key and a certificate, use the script to generate one.

```bash
./certificate.sh # Uses openssl to create a certificate (1 year validation).
```
