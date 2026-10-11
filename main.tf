data "aws_odb_db_servers" "odb_db_servers_lookup" {
  for_each = var.odb_db_servers_lookup

  cloud_exadata_infrastructure_id = each.value.cloud_exadata_infrastructure_id
  region                          = each.value.region
}

