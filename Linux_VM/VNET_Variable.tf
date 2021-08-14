variable VNET_Name{
    description = "Virtual Network Name"
    type        = list(string)
    default     = ["VNET1"]
}

variable VNET_Address{
    description = "Virtual Network Address"
    type        = list(string)
    default     = ["10.0.0.0/16"]
}

variable "VNET_TAG"{
    description = "Virtual Network Tag"
    type        = map(string)
    default     = { 
        Environment = "Development "
        Owner       = "John"
    }   
}