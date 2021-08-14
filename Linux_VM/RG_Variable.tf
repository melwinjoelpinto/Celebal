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