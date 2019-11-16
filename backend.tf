terraform {
    backend "s3" {
        profile    = "terraform_ci_test"
        bucket = "bucket-backend-s3"
        region = "sa-east-1"
        encrypt = "true"
        dynamodb_table = "dynamodb-backend"
        key = "project-name/terraform.tfstate"
    }
}
