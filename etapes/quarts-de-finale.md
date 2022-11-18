# Quarts de finale

Live Youtube [QUARTS DE FINALE](https://youtu.be/8bZxMvJcgD4)

## **Objectifs**

Préparer l’environnement sur Azure pour la migration de l’infrastructure on premise existante. 
Configurer l’infrastructure Azure Migrate pour effectuer le processus d’évaluation de l’environnement. 
Configurer le Process Server pour répliquer les machines virtuelles on premise pour Azure.
Effectuer le test de migration d’une machine virtuelle pour Azure. 

## **Tâches**

- 📝 Configurer le projet Azure Migrate et démarrer la découverte (Discovery) de l’environnement on premise existante
- 📝 Configurer le procès d’évaluation (Assessment) sur Azure Migrate 
- 📝 Mettre en place le Process Server  
- 📝 Effectuer le test de migration de la VM-AD 
- 📝 Configurer un firewall sur un serveur Windows 2016 on-premises – RRAS 
- 📝 Réaliser le déploiement du Virtual Network Gateway 
- 📝 Établir une connexion VPN entre les environnements 

## **Liens utiles**

- Configuration serveur requise pour la migration - [Physical server requirements](https://docs.microsoft.com/fr-fr/azure/migrate/migrate-support-matrix-physical-migration#physical-server-requirement) 

- OS Supportés - [Azure support matrix](https://docs.microsoft.com/en-us/azure/site-recovery/azure-to-azure-support-matrix#supported-ubuntu-kernel-versions-for-azure-virtual-machines)

- Télécharger Edge - [Edge](https://www.microsoft.com/e]n-us/edge/business/download)

- Exigences Azure Migrate [migrate-appliance](https://docs.microsoft.com/pt-br/azure/migrate/migrate-appliance)

## **Commandes utilisées**

- Dépôt de l’Agent de mobilité : 
```bash
%ProgramData%\ASR\home\svsystems\pushinstallsvc\repository
```
- Valider la clé de migration : 
```bash
cd "C:\ProgramData\ASR\home\svsystems\bin" 
genpassphrase.exe -v
```
- Installation de l’agent sous Windows :
```powershell
ren Microsoft-ASR_UA_9.51.0.0_Windows_GA_26Sep2022_Release.exe MobilityServiceInstaller.exe
./MobilityServiceInstaller.exe  /q /x:C:\Temp\Extracted
cd C:\Temp\Extracted
```
- Exécuter le programme d’installation de Mobility Service :
```powershell
./UnifiedAgent.exe /Role "MS" /Platform "VmWare" /Silent
```
- Enregistrez l’agent auprès du périphérique de réplication :
```powershell
cd "C:\Program Files (x86)\Microsoft Azure Site Recovery\agent"
./UnifiedAgentConfigurator.exe  /CSEndPoint <votre adresseIP> /PassphraseFilePath <Entrez le chemin de votre Passphrase>
```

## **Evidences**

- ### Overview Migration 
<img width="960" alt="Visual_Migration_vmAD" style="width:800px" src="https://user-images.githubusercontent.com/43493818/202635298-3f057a50-17c3-4060-b29f-f99525ac1f7a.png">

- ### Assessment Azure Migrate
[Assessment NANDA-BDX STORE](https://github.com/Kastrupf/coupe-du-monde-azure/files/10038595/Assess-TFTEC.1.xlsx)

- ### Connexion VPN
<img width="954" alt="VPN" style="width:800px" src="https://user-images.githubusercontent.com/43493818/202633293-cf60bd94-5400-4dd6-8bba-df2dc9e8d7c5.png">

- ### Azure DevOps - Sprint 2
<img width="959" alt="AzureDevOps_Sprint2" style="width:800px" src="https://user-images.githubusercontent.com/43493818/202633160-5d884e59-f73f-46bb-8bd9-6ff3d4bfb3b4.png">
