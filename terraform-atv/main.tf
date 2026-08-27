# Bloco de configuração do provedor de nuvem (AWS)
provider "aws" {
  # Define em qual região geográfica os recursos serão criados.
  # Nota: Aqui podemos usar a variável definida no variables.tf mudando para: var.region
  region = var.region
}

# Bloco para criar um recurso na AWS (um bucket no S3)
# Sintaxe: resource "TIPO_DO_RECURSO" "NOME_INTERNO_NO_TERRAFORM"
resource "aws_s3_bucket" "meu_bucket" {
  # Atributo com o nome real que o bucket terá na AWS.
  # Lembre-se: Nomes de buckets S3 são globais e únicos em toda a AWS.
  bucket = "teste-aponti"
}