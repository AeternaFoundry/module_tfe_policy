resource "tfe_policy" "policies" {
  for_each = var.policies

  name         = each.value.name
  policy       = each.value.policy
  description  = each.value.description
  enforce_mode = each.value.enforce_mode
  kind         = each.value.kind
  organization = each.value.organization
  query        = each.value.query
}

