variable "Subnet_Name"{
    description = "Subnet Name"
    type        = list(string)
    default     = ["subnet1"]
}

variable "Subnet_Address"{
    description = "Subnet Address"
    type        = list(string)
    default     = ["10.0.2.0/24"] 
}



