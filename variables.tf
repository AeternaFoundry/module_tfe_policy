variable "policies" {
  description = <<EOT
Map of policies, attributes below
Required:
    - name
    - policy
Optional:
    - description
    - enforce_mode
    - kind
    - organization
    - query
EOT

  type = map(object({
    name         = string
    policy       = string
    description  = optional(string)
    enforce_mode = optional(string)
    kind         = optional(string)
    organization = optional(string)
    query        = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

