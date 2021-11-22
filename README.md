# Identity

IAM resources that support https://github.com/SamuelM333/container-factorial/ and https://github.com/SamuelM333/serverless-csv/

## Deployment

The application follows a rolling release method: pushing to `master` will trigger a deployment using Github Actions and Terraform Cloud.

### High-level pipeline overview

1. Install and setup Terraform
1. Validate Terraform code
1. Run Terraform plan and share output on pull request
1. Run Terraform apply when committing to `master`
