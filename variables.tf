variable "regionlist" {
    type = map(string)
    default = {
        "London"  = "eu-gb"
        "Sao Paulo" = "br-sao"
        "Toronto" = "ca-tor"
        "Tokyo" = "jp-tok"
        "Washington DC" = "us-east"
    }
}


variable "region" {
  type        = string
  default     = "Sao Paulo"
  description = "Region to deploy to, Available Regions: London/Sao Paulo/Toronto/Tokyo/Washington DC"

   validation {
    condition     = ( var.region == "London"  ||
                      var.region == "Sao Paulo" ||
                      var.region == "Toronto" ||
                      var.region == "Tokyo" ||
                      var.region == "Washington DC" )
    error_message = "Value of region must be one of London/Sao Paulo/Toronto/Tokyo/Washington DC."
  }
}

variable "zone" {
  type        = string
  default     = "1"
  description = "Zone to deploy to, e.g. 1."

  validation {
    condition     = ( var.zone == "1" ||
                      var.zone == "2" ||
                      var.zone == "3")
    error_message = "Value of zone must be one of 1/2/3."
  }
}

variable "logical_network" {
  type        = string
  description = "Name of the Logical Network, if the Logical Network doesn't exist a new one will be created with the provided name"
}

variable "profilelist" {
    type = map(string)
    default = {
        "Small"  = "mz2d-metal-2x64"
        "Medium" = "mz2d-metal-16x512"
    }
}

variable "profile" {
  type        = string
  default     = "Small"
  description = "L1BM Profile to be Choosen. Available Profiles: Small/Medium"

   validation {
    condition     = ( var.profile == "Small"  ||
                      var.profile == "Medium" )
    error_message = "Value of the profile must be Small/Medium."
  }
}

variable "ssh-key" {
  type        = string
  default     = ""
  description = "SSH Key to be used"
}

variable "prefix" {
  type        = string
  default     = "l1bm-database"
  description = "Prefix to be attached to name of all generated resources"
}

