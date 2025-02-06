resource "aws_waf_web_acl" "app_waf" {
  name        = "app-waf"
  metric_name = "appWAF"

  default_action {
    type = "ALLOW"
  }

  rule {
    name     = "BlockBadRequests"
    priority = 1

    action {
      type = "BLOCK"
    }

    statement {
      rate_based_statement {
        limit              = 2000
        aggregate_key_type = "IP"
      }
    }
  }

  scope = "REGIONAL"
}