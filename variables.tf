variable "service_account_keys" {
  description = <<EOT
Map of service_account_keys, attributes below
Required:
    - service_account_id
Optional:
    - deletion_policy
    - keepers
    - key_algorithm
    - private_key_type
    - public_key_data
    - public_key_type
EOT

  type = map(object({
    service_account_id = string
    deletion_policy    = optional(string)
    keepers            = optional(map(string))
    key_algorithm      = optional(string)
    private_key_type   = optional(string)
    public_key_data    = optional(string)
    public_key_type    = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_account_keys : (
        v.key_algorithm == null || (contains(["KEY_ALG_UNSPECIFIED", "KEY_ALG_RSA_1024", "KEY_ALG_RSA_2048"], v.key_algorithm))
      )
    ])
    error_message = "must be one of: \"KEY_ALG_UNSPECIFIED\", \"KEY_ALG_RSA_1024\", \"KEY_ALG_RSA_2048\""
  }
  validation {
    condition = alltrue([
      for k, v in var.service_account_keys : (
        v.private_key_type == null || (contains(["TYPE_UNSPECIFIED", "TYPE_PKCS12_FILE", "TYPE_GOOGLE_CREDENTIALS_FILE"], v.private_key_type))
      )
    ])
    error_message = "must be one of: \"TYPE_UNSPECIFIED\", \"TYPE_PKCS12_FILE\", \"TYPE_GOOGLE_CREDENTIALS_FILE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.service_account_keys : (
        v.public_key_type == null || (contains(["TYPE_NONE", "TYPE_X509_PEM_FILE", "TYPE_RAW_PUBLIC_KEY"], v.public_key_type))
      )
    ])
    error_message = "must be one of: \"TYPE_NONE\", \"TYPE_X509_PEM_FILE\", \"TYPE_RAW_PUBLIC_KEY\""
  }
}

