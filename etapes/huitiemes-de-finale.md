# Huitièmes de finale

Live Youtube [HUITIEMES DE FINALE](https://youtu.be/Z1bbaqj7ka0)

## **Objectifs**

Mettre en place le processus de migration de l’application E-Commerce, en utilisant les meilleures pratiques du CAF - Azure Cloud Adoption Framework.

## **Tâches**

- 📝 Créer une zone d’atterrissage pour permettre la migration des applications, la modernisation et l’innovation à l’échelle de l’entreprise, en tenant compte de l’échelle, de la gouvernance de la sécurité, de la mise en réseau et de l’identité
- 📝 Définir des normes taxonomiques pour les ressources, telles que Resource Group, Virtual Network (VNET), Subnet, Virtual Machine (VM), Network Security Group (NSG), Storage Account, etc. 
- 📝 Définir un nom personnalisé pour le Tenant de la société et migrer l’abonnement vers ce nouveau Tenant 
- 📝 Créer et migrer une zone DNS publique vers Azure
- 📝 Synchroniser les identités ADDS avec Azure AD
- 📝 Configurer l’identité hybride
- 📝 Intégrer Azure Devops au nouveauo Tenant sur Azure  (Azure AD)
- 📝 Ajuster les autorisations au sein de l’organisation dans Azure Devops conformément à la documentation de gouvernance
- 📝 Créer un groupe de ressources de production et de développement
- 📝 Créer une infrastructure RBAC pour la Souscription et le Resource Group, conformément à la documentation de gouvernance
- 📝 Créer une structure de projet avec des activités initiales dans Azure Boards, en suivant la méthodologie Scrum
- 📝 Créez une structure de réseau au format HUB-SPOKE, avec la division de service suivante : 
     - Réseau HUB pour les services « communs » tels qu’Active Directory
     - Réseau SPOKE - Production, contenant des serveurs d’applications de production
     - Réseau SPOKE - Développement, contenant des permissions exclusives devs
- 📝 Appliquer l’accès conditionnel - MFA aux utilisateurs disposant de privilèges d’administration

## **Liens utiles**

- Framework d’adoption du cloud ´Microsoft pour Azure - [CAF](https://learn.microsoft.com/fr-fr/azure/cloud-adoption-framework/)
- Zone d’atterrissage Azure - [Landing Zone](https://learn.microsoft.com/fr-fr/azure/cloud-adoption-framework/ready/landing-zone/)
- Convention de nommage - [Taxonomie](https://learn.microsoft.com/fr-fr/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming)
- Etiquetage des ressources - [Tags](https://learn.microsoft.com/fr-fr/azure/cloud-adoption-framework/decision-guides/resource-tagging/)

## **Evidences**

- ### AzureAD
<img width="836" alt="AzureAD" style="width:800px" src="https://user-images.githubusercontent.com/43493818/202009963-1fbe10f4-deaf-4820-8bde-edc05ddfd998.png">

- ### AzureDevOps
<img width="958" alt="AzureDevOps" style="width:800px" src="https://user-images.githubusercontent.com/43493818/202010032-3acb96dc-c5be-4f20-8888-75ff7f3d5110.png">

- ### ConditionalAccess
<img width="835" alt="ConditionalAccess" style="width:800px" src="https://user-images.githubusercontent.com/43493818/202010095-16929cd7-7a4a-4296-8fc2-df4cbf1ada6a.png">
