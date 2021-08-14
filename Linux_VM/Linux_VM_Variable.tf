variable  "Linux_VM_Name"{
    description = "Virtual Machine Name"
    type        = list(string)
    default     = ["Linux_VM"]
}

variable "Linux_VM_Size"{
    description = "Virtual Machine Size"
    type        = list(string)
    default     = ["Standard_B1s"] 
}

variable "Linux_VM_Publisher"{
    description = "Virtual Machine Publisher"
    type        = list(string)
    default     = ["Canonical"]
}

variable "Linux_VM_Offer"{
    description = "Virtual Machine Offer"
    type        = list(string)
    default     = ["UbuntuServer"]
}

variable "Linux_VM_SKU"{
    description = "Virtual Machine Sku"
    type        = list(string)
    default     = ["18.04-LTS"]
}

variable "Linux_VM_Version"{
    description = "Virtual Machine Version"
    type        = list(string)
    default     = ["latest"]
}

variable "Linux_VM_OS_Name"{
    description = "Virtual Machine Disk Name"
    type        = list(string) 
    default     = ["Linux_VM_DISK1"]
}

variable "Linux_VM_OS_Caching"{
    description = "Virtual Machine Caching"
    type        = list(string)
    default     = ["ReadWrite"]
}

variable "Linux_VM_Creation_Option"{
    description = "Virtual Machine Creation"
    type        = list(string)
    default     = ["FromImage"]
}

variable "Linux_VM_OS_Disk_Type"{
    description = "Virtual Machine OS DISK TYPE"
    type        = list(string)
    default     = ["Standard_LRS"]
}

variable "Linux_VM_Host_Name"{
    description = "Virtual Machine Host Name"
    type        = list(string)
    default     = ["LinuxServer"]
}

variable "Linux_VM_Username"{
    description = "Virtual Machine User Name"
    type        = list(string)
    default     = ["linux1_user1"]
}

variable "Linux_VM_Password"{
    description = "Virtual Machine Password"
    type        = list(string)
    default     = ["@Linuxuser1"]
}

variable "Linux_VM_Password_Authentication"{
    description = "Virtual Machine Password Authentication"
    type        = list(string)
    default     = ["false"]
}

variable "Apache_Server"{
    description = "Apache Server"
    type        = list(string)
    default     = ["azure_apache_data.sh"]
}

variable "Linux_VM_TAG"{
    description = "Virtual Machine Tag"
    type        = map(string) 
    default     = {
        Name        = "Linux_VM_VM"
        Environment = "Development"
        Owner       = "John"
    }
}

