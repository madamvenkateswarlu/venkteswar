locals {
  linux_image_ids = {
    "vm-001" = var.todoapp_image_id
    #"vm-001" = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourceGroups/ado-base-infrastructure/providers/Microsoft.Compute/galleries/sharedimages/images/mysqldbdev02/versions/0.0.2"
  }
}

# Diagnostics Extensions
variable "todoapp_image_id" {
  type        = string
  description = "The image id"
  default     = null
}