resource "okta_api_token" "api_tokens" {
  for_each = var.api_tokens

  id          = each.value.id
  client_name = each.value.client_name
  created     = each.value.created
  name        = each.value.name
  user_id     = each.value.user_id

  dynamic "network" {
    for_each = each.value.network != null ? each.value.network : []
    content {
      connection = network.value.connection
      exclude    = network.value.exclude
      include    = network.value.include
    }
  }
}

