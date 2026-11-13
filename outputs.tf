output "api_tokens_client_name" {
  description = "Map of client_name values across all api_tokens, keyed the same as var.api_tokens"
  value       = { for k, v in okta_api_token.api_tokens : k => v.client_name }
}
output "api_tokens_created" {
  description = "Map of created values across all api_tokens, keyed the same as var.api_tokens"
  value       = { for k, v in okta_api_token.api_tokens : k => v.created }
}
output "api_tokens_id" {
  description = "Map of id values across all api_tokens, keyed the same as var.api_tokens"
  value       = { for k, v in okta_api_token.api_tokens : k => v.id }
}
output "api_tokens_name" {
  description = "Map of name values across all api_tokens, keyed the same as var.api_tokens"
  value       = { for k, v in okta_api_token.api_tokens : k => v.name }
}
output "api_tokens_network" {
  description = "Map of network values across all api_tokens, keyed the same as var.api_tokens"
  value       = { for k, v in okta_api_token.api_tokens : k => v.network }
}
output "api_tokens_user_id" {
  description = "Map of user_id values across all api_tokens, keyed the same as var.api_tokens"
  value       = { for k, v in okta_api_token.api_tokens : k => v.user_id }
}

