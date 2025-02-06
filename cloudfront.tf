resource "aws_cloudfront_distribution" "app_cdn" {
  origin {
    domain_name = aws_lb.app_lb.dns_name
    origin_id   = "ALBOrigin"
  }

  enabled = true
  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD", "OPTIONS"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "ALBOrigin"
    viewer_protocol_policy = "redirect-to-https"
  }
 depends_on = [resource.aws_lb_listener.http] 
}