variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable app_disk_image {
description = "Disk image for reddit db"
default = "reddit-app-base"
}

variable subnet_id {
description = "Subnets for modules"
}

variable core_fraction {
description = "Core fraction"
default = "5"
}

variable cores {
description = "Cores"
default = "2"
}

variable memory {
description = "Memory"
default = "1"
}
