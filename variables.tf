variable "identity_tag_defaults_lookup" {
  description = <<EOT
Map of identity_tag_defaults_lookup, attributes below
Optional:
    - compartment_id
    - state
    - tag_definition_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id    = optional(string)
    state             = optional(string)
    tag_definition_id = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

