module "PRVMODULE" {
  source  = "app.terraform.io/FALCON_ORG/PRVMODULE/random"
  version = "1.0.0"
}

output "result" {
  value = module.PRVMODULE.value
}
