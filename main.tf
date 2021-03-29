module "cdn" {
  source               = "genstackio/website/aws//modules/cdn"
  version              = "0.1.12"
  name                 = var.name
  origin               = var.origin
  zone                 = var.dns_zone
  dns                  = var.dns
  apex_redirect        = var.apex_redirect
  forward_query_string = var.forward_query_string
  geolocations         = var.geolocations
  providers            = {
    aws     = aws
    aws.acm = aws.acm
  }
}
