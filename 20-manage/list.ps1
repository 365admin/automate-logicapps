<#---
title: Workflow - List
---

Anti-pattern samples
https://learn.microsoft.com/en-us/azure/app-service/tutorial-send-email?tabs=dotnet#create-the-logic-app
#>

param(
   
    $resourcegroup = "magicbox"
   
)




az logic workflow list  -g $resourcegroup



      