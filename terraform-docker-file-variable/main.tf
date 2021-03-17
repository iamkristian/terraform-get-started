terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"
    }
  }
}

variable "hostname" {
  type = string
  default = "iamgroot"
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}


resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
  hostname = var.hostname
  # Copies the configs.d folder to /etc/configs.d
  upload  {
    source      = "conf/index.html"
    file = "/usr/share/nginx/html/index.html"
  }
}
