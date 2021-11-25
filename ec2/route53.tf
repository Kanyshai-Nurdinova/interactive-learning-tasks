resource "aws_route53_record" "webserver" {
  zone_id = "Z02460806HARJKYR15H6"
  name    = "wordpress.kanas.link"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}