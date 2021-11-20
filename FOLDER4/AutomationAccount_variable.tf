variable "rg_name" {
    description = "specify resource group name"
    type = string
    default = "KPMG-CA-DWSynapsePOC-RG"

}

variable "tags" {
    description = "specify tags"
    type = map(string)
    default = {
        CA_Application  = "Azure Synapse",
        CA_BCRating     = "BC2",
        CA_BusinessUnit = "BES",
        CA_CreatedBy    = "lloydlim@Kpmg.ca",
        CA_DCRating     = "Confidential",
        CA_Environment  = "POC",
        CA_Owner        = "Mark Newman",
        CA_Purpose= "Enterprise Analytics (EA) for BES",
        CA_WiseID       = "5551"

    }

}

variable "automationAccount_name" {
    description = "specify automation Account name"
    type = string
    default = "aa-kpmgcadwpoc01"

}

variable "sku_name" {
    description = "specify sku name"
    type = string
    default = "Basic"

}

variable "az_module_name" {
    description = "specify az_module_name"
    type = string
    default = "az.accounts"

}

variable "other_module_names" {
    description = "specify other_module_names"
    type = list
    default = ["az.compute" , "az.synapse" , "az.analysisservices"]

}

variable "module_link_url" {
    description = "specify module_link_url"
    type = string
    default = "https://psg-prod-eastus.azureedge.net/packages/az.accounts.2.6.2.nupkg"

}

variable "other_modules_link_url" {
    description = "specify other_modules_link_url"
    type = list
    default = ["https://psg-prod-eastus.azureedge.net/packages/az.compute.4.20.0.nupkg" ,"https://psg-prod-eastus.azureedge.net/packages/az.synapse.0.18.0.nupkg" , "https://psg-prod-eastus.azureedge.net/packages/az.analysisservices.1.1.4.nupkg"]
    

}


#"https://psg-prod-eastus.azureedge.net/packages/az.compute.4.20.0.nupkg" ,, "https://psg-prod-eastus.azureedge.net/packages/az.analysisservices.1.1.4.nupkg"