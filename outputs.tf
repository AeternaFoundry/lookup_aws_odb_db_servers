output "odb_db_servers_lookup_cloud_exadata_infrastructure_id" {
  description = "Map of cloud_exadata_infrastructure_id values across all odb_db_servers_lookup, keyed the same as var.odb_db_servers_lookup"
  value       = { for k, v in data.aws_odb_db_servers.odb_db_servers_lookup : k => v.cloud_exadata_infrastructure_id if v.cloud_exadata_infrastructure_id != null && length(v.cloud_exadata_infrastructure_id) > 0 }
}
output "odb_db_servers_lookup_db_servers" {
  description = "Map of db_servers values across all odb_db_servers_lookup, keyed the same as var.odb_db_servers_lookup"
  value       = { for k, v in data.aws_odb_db_servers.odb_db_servers_lookup : k => v.db_servers if v.db_servers != null && length(v.db_servers) > 0 }
}
output "odb_db_servers_lookup_region" {
  description = "Map of region values across all odb_db_servers_lookup, keyed the same as var.odb_db_servers_lookup"
  value       = { for k, v in data.aws_odb_db_servers.odb_db_servers_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

