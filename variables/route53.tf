
resource "aws_route53_record" "create-records" {
count = length(var.instance_name)
zone_id = var.zone_id
name    = "${var.instance_name[count.index]}-'internal'.${var.domain_name}"
type    = var.type
ttl     = var.ttl
  records = [aws_instance.roboshop[count.index].private_ip]
}

resource "aws_route53_record" "public-create-records" {
  count = length(var.instance_name)
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain_name}"
  type    = var.type
  ttl     = var.ttl
  records = [aws_instance.roboshop[count.index].public_ip]
}
