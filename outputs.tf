output "identity_tag_defaults_lookup_id" {
  description = "Map of id values across all identity_tag_defaults_lookup, keyed the same as var.identity_tag_defaults_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_tag_defaults.identity_tag_defaults_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_tag_defaults_lookup_compartment_id" {
  description = "Map of compartment_id values across all identity_tag_defaults_lookup, keyed the same as var.identity_tag_defaults_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_identity_tag_defaults.identity_tag_defaults_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "identity_tag_defaults_lookup_filter" {
  description = "Map of filter values across all identity_tag_defaults_lookup, keyed the same as var.identity_tag_defaults_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_tag_defaults.identity_tag_defaults_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_tag_defaults_lookup_state" {
  description = "Map of state values across all identity_tag_defaults_lookup, keyed the same as var.identity_tag_defaults_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_identity_tag_defaults.identity_tag_defaults_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "identity_tag_defaults_lookup_tag_defaults" {
  description = "Map of tag_defaults values across all identity_tag_defaults_lookup, keyed the same as var.identity_tag_defaults_lookup except keys with no tag_defaults are omitted"
  value       = { for k, v in data.oci_identity_tag_defaults.identity_tag_defaults_lookup : k => v.tag_defaults if v.tag_defaults != null && length(v.tag_defaults) > 0 }
}
output "identity_tag_defaults_lookup_tag_definition_id" {
  description = "Map of tag_definition_id values across all identity_tag_defaults_lookup, keyed the same as var.identity_tag_defaults_lookup except keys with no tag_definition_id are omitted"
  value       = { for k, v in data.oci_identity_tag_defaults.identity_tag_defaults_lookup : k => v.tag_definition_id if v.tag_definition_id != null && length(v.tag_definition_id) > 0 }
}

