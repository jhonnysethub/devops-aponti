# Imprime o nome do bucket criado
output "nome_do_bucket" {
  # Sintaxe de referência: TIPO_RECURSO.NOME_INTERNO.ATRIBUTO
  value = aws_s3_bucket.meu_bucket.bucket
}

# Imprime o ID único do bucket
output "id_do_bucket" {
  value = aws_s3_bucket.meu_bucket.id
}

# Imprime a lista com os nomes das zonas de disponibilidade retornado pelo data source (ex: us-east-1a, us-east-1b...)
output "informacao_data" {
  # Sintaxe de referência para Data Source: data.TIPO_DATA.NOME_INTERNO.ATRIBUTO
  value = data.aws_availability_zones.nome.names
}