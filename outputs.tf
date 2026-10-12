output "policies_id" {
  description = "Map of id values across all policies, keyed the same as var.policies except keys with no id are omitted"
  value       = { for k, v in tfe_policy.policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "policies_description" {
  description = "Map of description values across all policies, keyed the same as var.policies except keys with no description are omitted"
  value       = { for k, v in tfe_policy.policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "policies_enforce_mode" {
  description = "Map of enforce_mode values across all policies, keyed the same as var.policies except keys with no enforce_mode are omitted"
  value       = { for k, v in tfe_policy.policies : k => v.enforce_mode if v.enforce_mode != null && length(v.enforce_mode) > 0 }
}
output "policies_kind" {
  description = "Map of kind values across all policies, keyed the same as var.policies except keys with no kind are omitted"
  value       = { for k, v in tfe_policy.policies : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "policies_name" {
  description = "Map of name values across all policies, keyed the same as var.policies except keys with no name are omitted"
  value       = { for k, v in tfe_policy.policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "policies_organization" {
  description = "Map of organization values across all policies, keyed the same as var.policies except keys with no organization are omitted"
  value       = { for k, v in tfe_policy.policies : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "policies_policy" {
  description = "Map of policy values across all policies, keyed the same as var.policies except keys with no policy are omitted"
  value       = { for k, v in tfe_policy.policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "policies_query" {
  description = "Map of query values across all policies, keyed the same as var.policies except keys with no query are omitted"
  value       = { for k, v in tfe_policy.policies : k => v.query if v.query != null && length(v.query) > 0 }
}

