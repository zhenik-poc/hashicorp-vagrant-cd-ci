build {
  sources = [
    "source.vagrant.fun",
  ]

  provisioner "shell" {
    script = "bootstrap.sh"
  }

}
