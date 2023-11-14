# resource group name
variable "resource" {
  description = "Resource Group Name"
  default     = "newteinfraCA"
}
# region name
variable "location" {
  description = "Region Name"
  default     = "eastus"
}

variable "subscription_id" {
  default = ""
}
variable "tenant_id" {
  default = ""
}
variable "client_id" {
  default = ""
}
variable "client_secret" {
  default = ""
}

# Container Registry
variable "cr" {
  description = "Container Registry"
  default     = "newteinfra"
}

variable "log" {
  description = "Log Analytics Workspace"
  default     = "newteinfraLOG"
}

# Container Apps Enviroment
variable "env" {
  description = "Container app env"
  default     = "newteinfraENV"
}






# application expose public IP
variable "publicip" {
  description = "Public Ip"
  default = "newteinfraPublicIP"
}

# Application gateway apps
variable "applicationgateway" {
  description = "Application Gateway Name"
  default = "newteinfraAGW"
}

#container registry reg
variable "registry" {
  default = "<REGISTRY>"
}
#container registry name
variable "registry_name"{
  default = "<REGISTRY_NAME>"
}
#conatiner registry password
variable "registry_password" {
  default = "<REGISTRY_PASSWORD>"
}


