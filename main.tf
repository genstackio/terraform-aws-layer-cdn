module "cdn" {
  source               = "genstackio/website/aws//modules/cdn"
  version              = "0.2.2"
  name                 = var.name
  origin               = var.origin
  zone                 = var.dns_zone
  dns                  = var.dns
  apex_redirect        = var.apex_redirect
  forward_query_string = var.forward_query_string
  geolocations         = var.geolocations
  price_class          = var.price_class
  headers              = var.headers
  keep_host            = var.keep_host
  forward_headers      = var.forwarded_headers
  default_root         = var.default_root
  index_document       = var.index_document
  error_document       = var.error_document
  error_403_page_path  = var.error_403_page_path
  error_404_page_path  = var.error_404_page_path
  functions            = var.functions
  edge_lambdas         = var.edge_lambdas
  edge_lambdas_variables = var.edge_lambdas_variables
  providers            = {
    aws     = aws
    aws.acm = aws.acm
  }
}
