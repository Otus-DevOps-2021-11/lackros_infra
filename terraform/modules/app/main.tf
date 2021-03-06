resource "yandex_compute_instance" "app" {
  name = "reddit-app"
  scheduling_policy {
    preemptible = true
  }
  labels = {
    tags = "reddit-app"
  }

  resources {
    core_fraction = var.core_fraction
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.app_disk_image
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat = true
  }

  metadata = {
  ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
}
