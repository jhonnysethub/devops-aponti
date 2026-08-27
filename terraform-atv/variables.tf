# Declaração de uma variável chamada "region"
variable "region" {
  # Texto explicativo sobre a finalidade da variável
  description = "Região da AWS onde a infraestrutura será criada"

  # Tipo de dado aceito (string, number, bool, list, map, object)
  type = string

  # Garante que a variável não aceite valores nulos/vazios
  nullable = false

  # Valor padrão usado caso nada seja passado via tfvars ou linha de comando
  default = "sa-east-1"

  # Regra de validação personalizada para restringir quais regiões são permitidas
  validation {
    # Condição: O valor passado precisa estar na lista dada
    condition     = contains(["us-east-1", "us-east-2", "sa-east-1"], var.region)
    # Mensagem exibida no terminal caso a validação falhe
    error_message = "A região informada é inválida. Escolha entre: us-east-1, us-east-2 ou sa-east-1."
  }
}