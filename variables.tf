
variable "environment" {
  type        = string
  description = "Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT'"
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment"]
  description = "Label order, e.g. `name`,`application`."
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `organization`, `environment`, `name` and `attributes`."
}

variable "repository" {
  type        = string
  default     = ""
  description = "Terraform current module repo"
}

variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "managedby" {
  type        = string
  default     = "Shanav-Technologies"
  description = "ManagedBy, eg 'Shanav-Technologies'."
}

variable "attributes" {
  type        = list(any)
  default     = []
  description = "Additional attributes (e.g. `1`)."
}

variable "availability_zone" {
  type        = string
  default     = "us-east-1a"
  description = "The Availability Zone in which to create your instance"
  sensitive   = true
}

variable "blueprint_id" {
  type        = string
  default     = "ubuntu_22_04"
  description = "The ID for a virtual private server image"
  sensitive   = true
}

variable "bundle_id" {
  type        = string
  default     = "nano_2_0"
  description = "The bundle of specification information"
  sensitive   = true
}

variable "use_default_key_pair" {
  type        = bool
  default     = true
  description = "Default key pair name will be used, you must keep 'key_pair_name' empty"
}

variable "create_static_ip" {
  type        = bool
  default     = false
  description = "Create and attach a statis IP to the instance"
  sensitive   = true
}

variable "port_info" {
  type = list(object({
    protocol = string
    port     = number
    cidrs    = list(string)
  }))
  default = null
}

variable "key_pair_name" {
  type        = string
  default     = ""
  description = "The key name to use for the instance."
  sensitive   = true
}

variable "instance_count" {
  type        = number
  default     = 1
  description = "Number of instances to launch."
}

variable "instance_enabled" {
  type        = bool
  default     = true
  description = "Flag to control the instance creation."
}

variable "pgp_key" {
  type        = string
  default     = ""
  description = "Flag to control the instance creation."
  sensitive   = true
}

variable "public_key" {
  type        = string
  default     = ""
  description = "The public key material. This public key will be imported into Lightsail."
  sensitive   = true
}

variable "key_path" {
  type        = string
  default     = ""
  description = "Public key path  (e.g. `~/.ssh/id_rsa.pub`)."
  sensitive   = true
}

variable "domain_name" {
  type        = string
  default     = ""
  description = "This is the name of the resource."
}
variable "user_data" {
  type        = string
  default     = ""
  description = " Single lined launch script as a string to configure server with additional user data."
}


