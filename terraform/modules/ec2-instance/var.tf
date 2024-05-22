variable "aws_key_pair" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCiKPyZOA9EW/sN83/4j/An9n100arHZjfS4YdquKIK8TIzWkcxk3UaFDYbMdsrIWNFmkMqUB+KaIXmoR48iAWU29OHQa9crr5EzHBZq3P380Jm0WcjdAvWnKVPgmxwvjgMIPAp6NyeOhwaeKUnmUodweQjmNAoFK8HE7HvcfPqfzdbirhVOGeufwwVG2puniHjUYRsfjWYwAcLifMPtbu4d2eyH7i1vVL3TXXDHHmWJtR7qzNVLIede3621s380IjbR7NJ2FPR+CGH1UidmfFZ+ZzfXRjnhrbM/7NOXC+GcRnRTUKPHENyN7AraOXPT+iN3S/e2sD9M4xPIIJG1u6MpS41Jae+lvlZ29FDZ49izhX8aIug0OCLDgv4yRm+5FZBpMm4ipEfnizP5Nxy7yeqhTrcQDyCGZtsf6YGWwVTgorADdoj/h4ROcYeld3MiXnqsJS132dWeGFe12wYe1ynBIHQLmTg9o2qFy73kqBd2rxP5yPQTBLTrnWDCWOOHuE= rajatzade@Rajats-MacBook-Air.local"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "cidr_block" {
  type = string
  description = "subnet cidr block"
  default = "10.0.1.0/24"
}

variable "region" {
  type = string
  default = "ap-southeast-1"
}

variable "profile" {
  type = string
  default = "default"
}