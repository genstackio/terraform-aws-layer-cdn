module "cdn" {
  source         = "genstackio/website/aws//modules/cdn"
  version        = "0.1.4"
  name           = var.name
  origin         = var.origin
  zone           = var.dns_zone
  dns            = var.dns
  apex_redirect  = var.apex_redirect
  geolocations   = var.geolocations
  providers      = {
    aws     = aws
    aws.acm = aws.acm
  }
}
