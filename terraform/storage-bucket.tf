resource "yandex_storage_bucket" "template_terraform" {
  access_key = "id-service-account"
  secret_key = "secret-key-service-account"
  bucket = "template-terraform"
}
