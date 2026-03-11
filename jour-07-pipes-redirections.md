# Jour 07 - Pipes, Redirections & Find

## Commandes apprises

### Redirections
- `>` : redirige la sortie vers un fichier (écrase)
- `>>` : redirige la sortie vers un fichier (ajoute)
- `2>` : redirige les erreurs vers un fichier
- `2>&1` : redirige erreurs et sortie normale ensemble

### Find
- `find . -type f -name "*.log"` : cherche tous les fichiers .log
- `find . -type f -mtime -1` : fichiers modifiés il y a moins d'1 jour

## Exemples pratiques
```bash
cat access.log > backup.log        # copie dans le fichier en écransant les éléments présents
cat access.log >> backup.log       # ajout à la fin du fichier
cat inexistant.txt 2> erreurs.log  # capture les erreurs
find . -type f -mtime -1           # recherche les fichiers modifiés datant de moins d'1 jour
```

## Points clés à retenir
- `>` écrase, `>>` ajoute — ne pas confondre en prod !
- `2>&1` toujours en fin de commande
