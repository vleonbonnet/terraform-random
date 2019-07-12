
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "cmd2" {
  provisioner "local-exec" {
      command = "sudo ls -l /etc/ssh/; sudo cat /etc/ssh/sshd_config"
        }
        }

output "random" {
  value = "${random_id.random.hex}"
}
