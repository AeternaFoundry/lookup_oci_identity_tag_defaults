data "oci_identity_tag_defaults" "identity_tag_defaults_lookup" {
  for_each = var.identity_tag_defaults_lookup

  compartment_id    = each.value.compartment_id
  state             = each.value.state
  tag_definition_id = each.value.tag_definition_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

