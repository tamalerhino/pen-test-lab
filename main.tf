resource "docker_container" "kali_container" {
  name  = "kali"
  image = "${docker_image.kali_image.name}"
  ports {
    internal  = "80"
    external  = "${var.ext_port}"
  }
  networks_advanced {
    name    = "${docker_network.public_bridge_network.name}"
    aliases = ["${var.kali_network_alias}"]
  }
  networks_advanced {
    name    = "${docker_network.private_bridge_network.name}"
    aliases = ["${var.kali_network_alias}"]
  }
}

resource "docker_container" "metasploitable_container" {
  name    = "metasploitable"
  image   = "${docker_image.metasploitable_image.name}"
  command = ["/root/init.sh"]
  networks_advanced {
    name    = "${docker_network.private_bridge_network.name}"
    aliases = ["${var.targets_network_alias}"]
  }
  provisioner "file" {
    source      = "./files/init.sh"
    destination = "/root/init.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod u+x /root/init.sh"
    ]
  }
}
