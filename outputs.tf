output "api_tokens_client_name" {
  description = "Map of client_name values across all api_tokens, keyed the same as var.api_tokens except keys with no client_name are omitted"
  value       = { for k, v in okta_api_token.api_tokens : k => v.client_name if v.client_name != null && length(v.client_name) > 0 }
}
output "api_tokens_created" {
  description = "Map of created values across all api_tokens, keyed the same as var.api_tokens except keys with no created are omitted"
  value       = { for k, v in okta_api_token.api_tokens : k => v.created if v.created != null && length(v.created) > 0 }
}
output "api_tokens_id" {
  description = "Map of id values across all api_tokens, keyed the same as var.api_tokens except keys with no id are omitted"
  value       = { for k, v in okta_api_token.api_tokens : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_tokens_name" {
  description = "Map of name values across all api_tokens, keyed the same as var.api_tokens except keys with no name are omitted"
  value       = { for k, v in okta_api_token.api_tokens : k => v.name if v.name != null && length(v.name) > 0 }
}
output "api_tokens_network" {
  description = "Map of network values across all api_tokens, keyed the same as var.api_tokens except keys with no network are omitted"
  value       = { for k, v in okta_api_token.api_tokens : k => v.network if v.network != null && length(v.network) > 0 }
}
output "api_tokens_user_id" {
  description = "Map of user_id values across all api_tokens, keyed the same as var.api_tokens except keys with no user_id are omitted"
  value       = { for k, v in okta_api_token.api_tokens : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

