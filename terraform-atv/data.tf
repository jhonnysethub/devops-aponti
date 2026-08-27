# Data Source para consultar as Zonas de Disponibilidade (Availability Zones) da região configurada
# Sintaxe: data "TIPO_DA_CONSULTA" "NOME_INTERNO_NO_TERRAFORM"
data "aws_availability_zones" "nome" {
  # Filtra apenas as zonas que estão ativas e prontas para uso no momento
  state = "available"
}