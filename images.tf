resource "docker_image" "kali_image" {
  name = "th3j0kr/kali-ptf:latest"
}

resource "docker_image" "metasploitable_image" {
  name = "meknisa/metasploitable-base:latest"
}
