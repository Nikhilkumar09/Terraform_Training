resource "random_string" "example" {
  length  = 8
  special = false
}

output "value" {
  value = random_string.example.result
}
