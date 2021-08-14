variable "NSG_Name"{
    description = "Network Security Group Name"
    type        = list(string)
    default     = ["NSG1"]
}

variable "NSG_TAG"{
    description = "Network Security Group Tag"
    type        = map(string)
    default     = {
        Name        = "Network_Security_Group"
        Environment = "Development"
        Owner       = "John"
    }
}

variable NSG_RULE{
    description = "Network Security Group Rule Name"
    type        = list(string)
    default     = ["RULE1"]
}

variable "NSG_RULE_Priority"{
    description = "Network Security Group Rule Priority"
    type        = list(string)
    default     = ["200"]
}

variable "NSG_RULE_Direction"{
    description = "Network Security Group Rule Direction"
    type        = list(string)
    default     = ["Inbound"]
}

variable "NSG_RULE_Access"{
    description = "Network Security Group Rule Access Specification"
    type        = list(string)
    default     = ["allow"]
}

variable "NSG_RULE_Protocol"{
    description = "Network Security Group Rule Protocol"
    type        = list(string)
    default     = ["*"]
}

variable "NSG_RULE_Source_Address"{
    description = "Network Security Group Rule Source Address"
    type        = list(string)
    default     = ["*"]
}

variable "NSG_RULE_Source_Port_Range"{
    description = "Network Security Group Rule Source Port Range"
    type        = list(string)
    default     = ["*"]
}

variable "NSG_RULE_Destination_Address"{
    description = "Network Security Group Rule Destination Address"
    type        = list(string)
    default     = ["*"]
}

variable "NSG_RULE_Destination_Port_Range"{
    description = "Network Security Group Rule Destination Port Range"
    type        = list(string)
    default     = ["80"]
}
