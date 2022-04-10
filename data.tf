data "aws_ssoadmin_instances" "sso" {}

data "aws_identitystore_group" "id_group" {
  for_each          = toset(local.groups)
  identity_store_id = local.identity_store_id

  filter {
    attribute_path  = "DisplayName"
    attribute_value = each.key
  }
}
