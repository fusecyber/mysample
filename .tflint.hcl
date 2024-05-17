plugin "aws" {
    enabled = true
    version = "0.31.0"
    #deep_check = false
    #deep_check = true
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

plugin "terraform" {
    enabled = true
    version = "0.5.0"
    source  = "github.com/terraform-linters/tflint-ruleset-terraform"
}

config {
  module = true
}

# terraform Rules
# @see https://github.com/terraform-linters/tflint-ruleset-terraform/blob/main/docs/rules/README.md
rule "terraform_naming_convention" {
  enabled = true
  custom = "^[a-zA-Z]+([_][a-zA-Z]+)*$"
}

rule "terraform_required_version" {
  enabled = false
}

rule "terraform_required_providers" {
  enabled = false
}

rule "terraform_standard_module_structure" {
  enabled = false
}

rule "terraform_comment_syntax" {
  enabled = false
}

# AWS Rule
# @see https://github.com/terraform-linters/tflint-ruleset-aws/tree/master/docs/rules
rule "aws_iam_policy_document_gov_friendly_arns" {
  enabled = true
}

rule "aws_iam_policy_gov_friendly_arns" {
  enabled = true
}

rule "aws_iam_role_policy_gov_friendly_arns" {
  enabled = true
}
