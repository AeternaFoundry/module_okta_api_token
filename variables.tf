variable "api_tokens" {
  description = <<EOT
Map of api_tokens, attributes below
Required:
    - id
Optional:
    - client_name
    - created
    - name
    - user_id
    - network (block):
        - connection (optional)
        - exclude (optional)
        - include (optional)
EOT

  type = map(object({
    id          = string
    client_name = optional(string)
    created     = optional(string)
    name        = optional(string)
    user_id     = optional(string)
    network = optional(list(object({
      connection = optional(string)
      exclude    = optional(list(string))
      include    = optional(list(string))
    })))
  }))
}

