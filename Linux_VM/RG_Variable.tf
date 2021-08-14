variable "Subscription_ID" {
    description = "Client Subscription Id"
    type        = string
    default     = ""
}

variable "Client_Secret" {
    description = "Client secret for Service Principal"
    type        = string
    default     = ""
}

variable "Client_ID"{
    description = "Client ID"
    type        = string
    default     = ""
}

variable "Tenant_ID"{
    description = "Tenant ID"
    type        = string
    default     = ""
}

variable "RG_Name"{
    description = "Primary Resource Group"
    type        = list(string)
    default     = ["Melwin_RG8"]
}

variable "RG_Location" {
    description = "Primary Resource Group Location"
    type        = list(string)
    default     = ["WestUS2"]
}

variable "RG_Tag"{
    description = "Resource Group Tag"
    type        = map(string)
    default     = { 
        Name        = "Resource_Group"
        Environment = "Development "
        Owner       = "John"
    }
}