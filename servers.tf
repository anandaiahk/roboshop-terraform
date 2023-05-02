data "aws_ami" "centos" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

data "aws_security_group" "allow-all" {
  name = "allow-all"
}

variable "instance_type" {
  default = "t3.small"
}

resource "aws_instance" "frontend" {
  ami           =  data.aws_ami.centos.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z08201413DP9SI70XZHGI"
  name    = "frontend-dev.kanand.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           =  data.aws_ami.centos.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z08201413DP9SI70XZHGI"
  name    = "mongodb-dev.kanand.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           =  data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z08201413DP9SI70XZHGI"
  name    = "catalogue-dev.kanand.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "redis" {
  ami           =  data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]
  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z08201413DP9SI70XZHGI"
  name    = "redis-dev.kanand.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           =  data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z08201413DP9SI70XZHGI"
  name    = "user-dev.kanand.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "cart" {
  ami           =  data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z08201413DP9SI70XZHGI"
  name    = "cart-dev.kanand.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql" {
  ami           =  data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z08201413DP9SI70XZHGI"
  name    = "mysql-dev.kanand.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           =  data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z08201413DP9SI70XZHGI"
  name    = "shipping-dev.kanand.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           =  data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z08201413DP9SI70XZHGI"
  name    = "rabbitmq-dev.kanand.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           =  data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z08201413DP9SI70XZHGI"
  name    = "payment-dev.kanand.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}