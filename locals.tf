locals {
  project_name = "AWS-IAM-POLICIES"
  environment  = "SandBox"
  challenge    = "Security-Speciality"
  region       = "eu-central-1"

  tags = {
    ProjectName = local.project_name
    Environment = local.environment
    Challenge   = local.challenge
  }
}
