variable "odb_db_servers_lookup" {
  description = <<EOT
Map of odb_db_servers_lookup, attributes below
Required:
    - cloud_exadata_infrastructure_id
Optional:
    - region
EOT

  type = map(object({
    cloud_exadata_infrastructure_id = string
    region                          = optional(string)
  }))
}

