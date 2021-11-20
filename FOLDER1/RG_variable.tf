variable "rg_name" {
    description = "specify resource group name"
    type = string
    default = "KPMG-CA-DWSynapsePOC-RG"

}

variable "location_name" {
    description = "specify location of resource group"
    type = string
    default = "Canadacentral"

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