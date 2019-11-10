terraform {
    backend "s3" { #backend do tipo S3
        profile    = "prod_oobj" #profile do aws-cli configurado na sua máquina
        bucket = "oobj-tf-state-oobj-prod" #nome do bucket s3 criado anteriormente
        region = "sa-east-1" #região
        encrypt = "true" #Encriptado
        dynamodb_table = "dynamodb-backend"
        key = "k8s/terraform.tfstate" #diretório onde os arquivos de estado serão salvos no bucket
    }
}