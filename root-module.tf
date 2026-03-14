module "random_test" {
  source = "../module"
}

output "result" {
  value = module.random_test.value
}
