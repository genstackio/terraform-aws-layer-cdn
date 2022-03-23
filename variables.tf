variable "name" {
  type    = string
  default = "front"
}
variable "origin" {
  type = string
}
variable "geolocations" {
  type    = list(string)
  default = []
}
variable "dns" {
  type = string
}
variable "apex_redirect" {
  type    = bool
  default = false
}
variable "forward_query_string" {
  type    = bool
  default = true
}
variable "dns_zone" {
  type = string
}
variable "headers" {
  type    = map(string)
  default = {}
}
variable "keep_host" {
  type    = bool
  default = true
}
variable "forwarded_headers" {
  type    = list(string)
  default = ["*"]
}
variable "default_root" {
  type    = string
  default = null
}
variable "index_document" {
  type    = string
  default = "index.html"
}
variable "error_document" {
  type    = string
  default = ""
}
variable "error_403_page_path" {
  type    = string
  default = ""
}
variable "error_404_page_path" {
  type    = string
  default = ""
}
variable "price_class" {
  type    = string
  default = "PriceClass_100"
}
variable "lambdas" {
  type = list(object({
    event_type = string
    lambda_arn = string
    include_body = bool
  }))
  default = []
}
variable "functions" {
  type = list(object({
    name = string
    event_type = string
    code = string
  }))
  default = []
}
variable "edge_lambdas" {
  type = list(object({
    event_type = string
    lambda_arn = string
    include_body = bool
  }))
  default = []
}
variable "edge_lambdas_variables" {
  type    = map(string)
  default = {}
}

