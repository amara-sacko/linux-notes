# Jour 08 - SSH 

## Commandes apprises

### Génération de clés
- `ssh-keygen -t ed25519 -C "email"` : génère une paire de clés SSH

### Fichiers importants
- `~/.ssh/id_ed25519` : clé privée — NE JAMAIS PARTAGER
- `~/.ssh/id_ed25519.pub` : clé publique — à copier sur les serveurs
- `~/.ssh/authorized_keys` : clés publiques autorisées sur le serveur
- `~/.ssh/config` : alias de connexion

### Copie de clé
- `ssh-copy-id -i ~/.ssh/id_ed25519.pub user@serveur` : copie la clé publique

### Fichier config SSH
```bash
Host alias
    HostName adresse-serveur
    User utilisateur
    IdentityFile ~/.ssh/id_ed25519
```

## Points clés à retenir
- Authentification par clé = plus sécurisé que le mot de passe
- La clé privée ne quitte jamais ta machine
- `~/.ssh/config` évite de taper les options à chaque connexion
