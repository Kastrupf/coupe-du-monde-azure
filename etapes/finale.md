# Finale

Live Youtube [FINALE](https://youtu.be/3ZbfaY_7mS0)


## **Objectifs**

Développer le pipeline créé lors de la demi-finale pour travailler avec des environnements segmentés - développement, homologation et production, en utilisant les meilleures pratiques de DevOps et sécurité.


## **Tâches**

- 📝 Brancher la WebApp principale pour permettre l’échange entre les environnements, afin d’assurer la plus grande disponibilité possible pour l’application, possibilité de restauration immédiate, en modifiant uniquement le pointage, sans avoir besoin d’apporter des modifications en DNS.
- 📝 Dans la partie DevOps, améliorer le contrôle du processus de déploiement de nouveaux packages dans la branche principale (main, master...). 
- 📝 Ajouter une hiérarchie d’approbations à un pipeline de publication.
- 📝 Configurer pour toute modification de code dans la branche principale pour déclencher automatiquement le pipeline de génération.
- 📝 Implémenter les meilleures pratiques d’authentification.
- 📝 Stocker les images d’application dans un conteneur d’objets blob.
- 📝 Stocker la clé d’accès du compte de stockage dans un secret Azure Key Vault, garantissant la protection des fichiers utilisés par WebApp.
- 📝 Assurer que la chaîne de connexion Azure SQL Database est sécurisée. 
- 📝 Appliquer automatiquement l’authentification multi facteur à un certain groupe d’utilisateurs, lorsqu’ils accèdent à une application spécifique. 


## **Scripts**

- Script PowerShell pour effectuer l’échange des slots :
```powershell
az webapp deployment slot swap -g $(ResourceGroupName) --n $(WebsiteName) --slot HML --target-slot Production
```

## **Evidences**

- ### URL du site WEB (ouvrir en fenêtre de navegation privée)
- [En production](https://www.nandabdxstore.ml)
- [En holologation](https://nandabdxstoreprd-hml.azurewebsites.net)
- [En dévelopement](https://nandabdxstoreprd-dev.azurewebsites.net)

- ### Pipelines
<img width="959" alt="FluxPipelines" style="width:800px" src="https://user-images.githubusercontent.com/43493818/203640850-71c68008-e583-4824-9c9f-9537e1abb87b.png">

- ### Releases
<img width="958" alt="ReleasesPipelines" style="width:800px" src="https://user-images.githubusercontent.com/43493818/203641008-c15281d8-a203-49b2-8826-3db1aff3c1bf.png">

- ### Utilisation du KeyVault pour la protection de clés et secrets
<img width="856" alt="KeyVaultDEV" style="width:800px" src="https://user-images.githubusercontent.com/43493818/203640675-3c50cb71-66ba-4fcd-8b08-32d42cceecb5.png">

- ### Site en ligne (DEV) 
<img width="958" alt="lojaVirtualDEV" style="width:800px" src="https://user-images.githubusercontent.com/43493818/203640431-7c981f54-28f6-4e3a-b41d-170b7e7b1056.png">
