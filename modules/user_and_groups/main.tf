
resource "authentik_user" "name" {
  username = var.user.username
  name = var.user.name
  email = var.user.email
  type = "internal"
  path = "goauthentik.io/sources/github"
  attributes = <<EOF
goauthentik.io/user/sources:
  - GitHub"
  EOF
}
