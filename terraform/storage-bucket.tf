resource "yandex_storage_bucket" "terraform_temp" {
  access_key = "id-service-account"
  secret_key = "secret-key-service-account"
  bucket = "terraform-temp"
}
