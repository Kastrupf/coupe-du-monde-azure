# Phase de Groupes

Live Youtube [FASE DE GRUPOS](https://youtu.be/gJU1-263s4s)

## **Objectifs**

Créer et configurer l'environnement on-premises

## **Tâches**

- 📝 Conversion de 2 VHD en disques managés Azure
- 📝 Création d'une VM IaaS pour la solution applicative et une VM IaaS pour la base de données à partir des disques déjà existantants 
- 📝 Création d'une VM IaaS pour servir de contrôleur de domaine 
- 📝 Configuration d'Active Directory à l'aide d'un domaine public 
- 📝 Deploiement des premiers utilisateurs sur le ADDS 
- 📝 Premier design d'architecture 

## **Liens utiles**

- Enregistrer un domaine public - [Frenom - Un nom pour tous](https://www.freenom.com/pt/index.html)
- Designer l'architecture - [Draw.io online](https://app.diagrams.net/)
- Télécharger [Draw.io](https://github.com/jgraph/drawio-desktop/releases/tag/v20.3.0)

## **Scripts**

- Commande pour importer VHD : 
```powershell
azcopy copy https://blablabla.blob.core.windows.net/vhd/disk-vm.vhd "votre token SAS"
```

- Commande pour créer des utilisateurs : 
```powershell
# Import active directory module for running AD cmdlets
Import-Module ActiveDirectory
  
# Store the data from NewUsersFinal.csv in the $ADUsers variable
$ADUsers = Import-Csv extras/NewUsersFinal.csv -Delimiter ";"

# Define UPN
$UPN = "blablabla.com"

# Loop through each row containing user details in the CSV file
foreach ($User in $ADUsers) {

    #Read user data from each field in each row and assign the data to a variable as below
    $username = $User.username
    $password = $User.password
    $firstname = $User.firstname
    $lastname = $User.lastname
    $initials = $User.initials
    $OU = $User.ou #This field refers to the OU the user account is to be created in
    $email = $User.email
    $streetaddress = $User.streetaddress
    $city = $User.city
    $zipcode = $User.zipcode
    $state = $User.state
    $country = $User.country
    $telephone = $User.telephone
    $jobtitle = $User.jobtitle
    $company = $User.company
    $department = $User.department

    # Check to see if the user already exists in AD
    if (Get-ADUser -F { SamAccountName -eq $username }) {
        
        # If user does exist, give a warning
        Write-Warning "A user account with username $username already exists in Active Directory."
    }
    else {

        # User does not exist then proceed to create the new user account
        # Account will be created in the OU provided by the $OU variable read from the CSV file
        New-ADUser `
            -SamAccountName $username `
            -UserPrincipalName "$username@$UPN" `
            -Name "$firstname $lastname" `
            -GivenName $firstname `
            -Surname $lastname `
            -Initials $initials `
            -Enabled $True `
            -DisplayName "$lastname, $firstname" `
            -Path $OU `
            -City $city `
            -PostalCode $zipcode `
            -Country $country `
            -Company $company `
            -State $state `
            -StreetAddress $streetaddress `
            -OfficePhone $telephone `
            -EmailAddress $email `
            -Title $jobtitle `
            -Department $department `
            -AccountPassword (ConvertTo-secureString $password -AsPlainText -Force) -ChangePasswordAtLogon $false

        # If user is created, show message.
        Write-Host "The user account $username is created." -ForegroundColor Cyan
    }
}
```

## **Evidences**

- ### Commande passée sur le site de vente
<img alt="ommande passée sur le site de vente" style="width:800px" src="https://user-images.githubusercontent.com/43493818/201472089-8d8543c2-b620-48ab-8ba1-35e8f8382cfd.png">

- ### Création d'un domaine personnalisé en Freenom
<img alt="Création d'un domaine personnalisé en Freenom" style="width:800px" src="https://user-images.githubusercontent.com/43493818/201472083-95701200-87b2-43e7-a49b-1d8eb739784f.png">

- ### Dessin d'architecture
<img alt="Création d'un domaine personnalisé en Freenom" style="width:800px" src="https://user-images.githubusercontent.com/43493818/201472490-9fa39887-5ba5-4a45-b345-88cf6bd6e67d.png">
