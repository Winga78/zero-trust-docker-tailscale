# Projet d'Infrastructure Zero Trust (ZT) : Démarrage

### 1. Structure des Répertoires

zero-trust-docker-tailscale/
├── app/
│   ├── Dockerfile
│   └── entrypoint.sh       # Client Tailscale + Service HTTP sur le port 9090
├── db/
│   ├── Dockerfile
│   └── entrypoint.sh       # Client Tailscale + Service HTTP sur le port 3333
├── headscale/
│   └── config/
│       |── config.yaml     # Configuration Headscale
└── docker-compose.yml


### 2. Lancement des Conteneurs

```bash
docker-compose up -d --build
```

### 2. Vérification du Lancement
```bash
 docker compose ps
 sudo systemctl status headscale
```


### 3. Résultat 
![alt text](<Capture d’écran 2025-12-15 220223.png>)