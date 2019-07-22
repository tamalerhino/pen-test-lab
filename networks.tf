resource "docker_network" "public_bridge_network" {
  name   = "public_kali_network"
  driver = "bridge"
}

resource "docker_network" "private_bridge_network" {
  name     = "target_internal_network"
  driver   = "bridge"
  internal = true
}
