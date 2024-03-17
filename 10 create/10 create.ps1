<#---
title: Logic Apps - Create
---

Hint

az command to get resource group and storage accounts in a given subscription

List groups and storage accounts in currency subscription
```powershell
az group list --output table
az storage account list --query "[].{Name:name}" --output table
```

The actual command to execute


#>

param(
    $name = "magicbox-logicapp",
    $resourcegroup = "magicbox",
    $storageaccount = "magicboxnexigroup",
    $location="westeurope"
)




az logicapp create -n $name -g $resourcegroup -s $storageaccount 



      