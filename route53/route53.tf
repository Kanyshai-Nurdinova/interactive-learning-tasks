resource "aws_route53_record" "www" {
  zone_id = "Z0088541277RJ4T1CLJXH"
  name    = "blog.kanas.link"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}
