output "service_account_keys_id" {
  description = "Map of id values across all service_account_keys, keyed the same as var.service_account_keys except keys with no id are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_account_keys_deletion_policy" {
  description = "Map of deletion_policy values across all service_account_keys, keyed the same as var.service_account_keys except keys with no deletion_policy are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "service_account_keys_keepers" {
  description = "Map of keepers values across all service_account_keys, keyed the same as var.service_account_keys except keys with no keepers are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.keepers if v.keepers != null && length(v.keepers) > 0 }
}
output "service_account_keys_key_algorithm" {
  description = "Map of key_algorithm values across all service_account_keys, keyed the same as var.service_account_keys except keys with no key_algorithm are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.key_algorithm if v.key_algorithm != null && length(v.key_algorithm) > 0 }
}
output "service_account_keys_name" {
  description = "Map of name values across all service_account_keys, keyed the same as var.service_account_keys except keys with no name are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "service_account_keys_private_key" {
  description = "Map of private_key values across all service_account_keys, keyed the same as var.service_account_keys except keys with no private_key are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.private_key if v.private_key != null && length(v.private_key) > 0 }
  sensitive   = true
}
output "service_account_keys_private_key_type" {
  description = "Map of private_key_type values across all service_account_keys, keyed the same as var.service_account_keys except keys with no private_key_type are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.private_key_type if v.private_key_type != null && length(v.private_key_type) > 0 }
}
output "service_account_keys_public_key" {
  description = "Map of public_key values across all service_account_keys, keyed the same as var.service_account_keys except keys with no public_key are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.public_key if v.public_key != null && length(v.public_key) > 0 }
}
output "service_account_keys_public_key_data" {
  description = "Map of public_key_data values across all service_account_keys, keyed the same as var.service_account_keys except keys with no public_key_data are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.public_key_data if v.public_key_data != null && length(v.public_key_data) > 0 }
}
output "service_account_keys_public_key_type" {
  description = "Map of public_key_type values across all service_account_keys, keyed the same as var.service_account_keys except keys with no public_key_type are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.public_key_type if v.public_key_type != null && length(v.public_key_type) > 0 }
}
output "service_account_keys_service_account_id" {
  description = "Map of service_account_id values across all service_account_keys, keyed the same as var.service_account_keys except keys with no service_account_id are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.service_account_id if v.service_account_id != null && length(v.service_account_id) > 0 }
}
output "service_account_keys_valid_after" {
  description = "Map of valid_after values across all service_account_keys, keyed the same as var.service_account_keys except keys with no valid_after are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.valid_after if v.valid_after != null && length(v.valid_after) > 0 }
}
output "service_account_keys_valid_before" {
  description = "Map of valid_before values across all service_account_keys, keyed the same as var.service_account_keys except keys with no valid_before are omitted"
  value       = { for k, v in google_service_account_key.service_account_keys : k => v.valid_before if v.valid_before != null && length(v.valid_before) > 0 }
}

