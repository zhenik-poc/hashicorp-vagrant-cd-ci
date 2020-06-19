source "vagrant" "fun" {
  communicator = "ssh"
  source_path = "hashicorp/bionic64"
  box_version = "1.0.282"
  box_name = "fun"
  provider = "virtualbox"
  add_cacert = "/etc/ssl/certs/ca-certificates.crt"
}