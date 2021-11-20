variable "rg_name" {
    description = "specify resource group name"
    type =  string
    default = "KPMG-CA-DWSynapsePOC-RG"

}

variable "log_analytics_wp_name" {
    type=string
    description = "specify log_analytics_workspace_name"
    default = "log-kpmgca-dwcore"

}

variable "nic-name" {
    description = "specify nic card name"
    type = list
    default = ["SHIR-nic" ,
               "blobendpoint.nic.f1632d03-d4c3-4e18-b878-aab3367fcb0c" ,
               "dfsendpoint.nic.73262361-7fed-4504-8acb-2283ed35165c" ,
               "sqlEndpoint.nic.666daee0-a237-4265-a6f6-e3db12cde0ab" ,
               "ondemand-sqlEndpoint.nic.a84ab8bd-9506-482e-ac8e-ab9b1c22fbed" ,
               "dev-Endpoint.nic.9cb49a34-387f-4819-a974-949a71d12269" ,
               "kv-kpmgcadwpoc01.nic.217d8b99-185a-4cf1-bf99-b94747567208"]

}

