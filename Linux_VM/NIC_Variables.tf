variable "NIC_Name"{
    description = "Network Interface Controller Name"
    type        = list(string)
    default     = ["Network1", "Network2"]
}

variable "NIC_IP_Name"{
    description = "Network Interface Controller Server Name"
    type        = list(string)
    default     = ["Server1", "Server2"]
}

variable "NIC_TAG"{
    description = "Network Interface Controller Tag"
    type        = map(string)
    default     = {
        Name        = "Network_Interface_Configuration"
        Environment = "Development"
        Owner       = "John"
    }
}

variable "NIC_Private_IP_Address_Allocation"{
    description = "Private IP allocation for VM"
    type        = list(string)
    default     = ["Dynamic"]
}