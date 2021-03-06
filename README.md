# secured-azure-lib
There are several ways of gaining access to an application and several ways that applications can access resources on the back-end. The internet is full of unsecured examples to demonstrate something which is working without keeping security in mind. 

This project will focus on finding best practices to access Azure resources in a secured fashion.

# Azure Resources Prerequisites
- Assuming you have an Azure AD tenant 
- Assuming you have a Group in your Azure AD called Managed-rg-Contributors
- Assuming you have a resource group called Managed-rg in your subscription
- Assuming you have Contributor role given to Managed-rg-Contributors group on your resource group level
- Assuming you have a seporate resource group for VNet

# Azure DevOps Prerequisites
- Assuming you have a project in your organization level called Managed-Security
- Assuming you have a pipeline that has been linked to this repository with read and write access
- Assuming there is a service principal assigned as service connection in the project that has full access to the resourcegroup in Azure

# Azure Network Prerequisites
- You need to have a VNet in Azure network where all your resources are attached to.