
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "cmd2" {
  provisioner "local-exec" {
      command = "sudo ifconfig -a"
        }
        }

output "random" {
  value = "${random_id.random.hex}"
}
