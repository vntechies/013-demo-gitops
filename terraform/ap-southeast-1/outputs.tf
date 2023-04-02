
output "vpc_ids" {
  value = {
    for k, v in module.vpc : k => v.vpc_id
  }
}

output "subnet_ids" {
  value = {
    for k, v in module.vpc : k => v.subnet_ids
  }
}