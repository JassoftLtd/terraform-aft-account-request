module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jon.shaw+sandbox@jassoft.co.uk"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "AFT Management"
    SSOUserEmail              = "jon.shaw@jassoft.co.uk"
    SSOUserFirstName          = "Jon"
    SSOUserLastName           = "Shaw"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
