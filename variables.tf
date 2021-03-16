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
variable "dns_zone" {
  type = string
}
