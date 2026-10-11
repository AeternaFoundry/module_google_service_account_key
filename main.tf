resource "google_service_account_key" "service_account_keys" {
  for_each = var.service_account_keys

  service_account_id = each.value.service_account_id
  deletion_policy    = each.value.deletion_policy
  keepers            = each.value.keepers
  key_algorithm      = each.value.key_algorithm
  private_key_type   = each.value.private_key_type
  public_key_data    = each.value.public_key_data
  public_key_type    = each.value.public_key_type
}

