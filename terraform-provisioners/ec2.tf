resource "aws_instance" "chandu" {
  ami = "ami-090252cbe067a9e58"
  vpc_security_group_ids = ["sg-0ad74b957b6b7351f"]
  instance_type = "t2.micro"
  subnet_id = "subnet-02438e2af84b2481e"

  provisioner "local-exec" {
    command = "echo ${self.private_ip} > private_ips.txt"
  }

  # provisioner "local-exec" {
  #   command = "ansible-playbook -i private_ips.txt web.yaml"
  # }
connection {
  type     = "ssh"
  user     = var.ssh_user
  password = var.ssh_password
  host     = self.public_ip
}
 
  provisioner "remote-exec" {
    inline = [
      "sudo dnf install ansible -y",
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }

}
