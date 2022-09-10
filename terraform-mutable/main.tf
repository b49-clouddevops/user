# module "vpc" {
#   source = "git::https://github.com/b49-clouddevops/tf-module-vpc.git?ref=main"
# }

module "cart" {
  source               = "./vendor/modules/app"
  # COMPONENT          = var.COMPONENT
  INSTANCE_TYPE        = var.INSTANCE_TYPE 
  ENV                  = var.ENV 
  SPOT_INSTANCE_COUNT  = var.SPOT_INSTANCE_COUNT
  OD_INSTANCE_COUNT    = var.OD_INSTANCE_COUNT 
  COMPONENT            = var.COMPONENT 
  APP_PORT             = var.APP_PORT 
  WORKSPATION_IP       = var.WORKSPATION_IP
  APP_VERSION          = var.APP_VERSION
  LB_TYPE              = "internal"
}

# You cannot parameterise the source section of the terraform module : Branc name cannot be parameterised. 
# That's the challenge with terraform : Terrafile from coretech
