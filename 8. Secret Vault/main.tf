provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "http://18.215.165.3:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "11c372b8-91ac-3506-a884-db3c870e4bef"
      secret_id = "0e7fddc3-e11c-54c7-9694-c8aad7082856"
    }
  }
}

data "vault_kv_secret_v2" "secret_username" {
  mount = "kv"
  name = "test-secret"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name = "username"
    Secret = data.vault_kv_secret_v2.secret_username.data["username"]
  }
}