
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "cmd1" {
  provisioner "local-exec" {
      command = "whoami"
        }
        }

resource "null_resource" "cmd2" {
  provisioner "local-exec" {
      command = "sudo cat /etc/passwd"
        }
        }

output "random" {
  value = "${random_id.random.hex}"
}
