module "STAGING" {
  source  = "app.terraform.io/FALCON_ORG/TEST/random"
  version = "1.0.0"
}

output "result" {
  value = module.STAGING.value
}


