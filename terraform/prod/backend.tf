terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "terraform-temp"
    region                      = "us-east-1"
    key                         = "RedditApp/Prod/prodstate.tfstate"
    access_key                  = ""
    secret_key                  = ""
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
