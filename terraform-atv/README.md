# Automação de Infraestrutura AWS com Terraform

Projeto prático desenvolvido para provisionar e gerenciar recursos na Amazon Web Services (AWS) utilizando Terraform como ferramenta de Infraestrutura como Código (IaC).

---

## O que foi aprendido

Durante a execução deste projeto, foram consolidados os seguintes conceitos essenciais de DevOps e IaC:

* Sintaxe HCL (HashiCorp Configuration Language): Estruturação e escrita de códigos declarativos para provisionamento.
* Ciclo de Vida do Terraform: Domínio dos comandos primários:
  * terraform init (Inicialização e download de provedores)
  * terraform plan (Planejamento e validação de mudanças)
  * terraform apply (Execução/criação da infraestrutura)
  * terraform destroy (Remoção automatizada de recursos)
* Gerenciamento de Estado (tfstate): Compreensão do arquivo de estado local que mapeia o código com a infraestrutura real.
* Consultas Dinâmicas (Data Sources): Busca de dados existentes na nuvem em tempo de execução (ex: Zonas de Disponibilidade ativas).
* Parametrização e Validação (Variables & Tfvars): Uso de variáveis com regras de validação para tornar a infraestrutura dinâmica e reutilizável.
* Saída de Dados (Outputs): Exibição centralizada de informações importantes da infraestrutura no terminal após a criação.
* Segurança no Versionamento: Configuração adequada do .gitignore para impedir o vazamento de credenciais, chaves e arquivos de estado sensíveis.

---

## Tecnologias Utilizadas

* Terraform (>= 1.0)
* AWS CLI
* AWS S3 (Simulação de armazenamento de objetos)
* Git & GitHub

---

## Estrutura do Projeto

.
├── .gitignore          # Filtro de arquivos sensíveis/temporários do Git
├── data.tf             # Consultas a dados existentes na AWS (Data Sources)
├── main.tf             # Definição do provider AWS e recursos (S3)
├── outputs.tf          # Exibição dos dados do recurso criado no terminal
├── terraform.tfvars    # Atribuição de valores reais às variáveis
├── variables.tf        # Declaração e regras de validação de variáveis
└── README.md           # Documentação do projeto

---

## Configuração e Instalação

### Pré-requisitos
1. AWS CLI instalado e configurado (`aws configure`).
2. Terraform instalado na máquina local.
3. Conta ativa na AWS.

### Passo a Passo

1. Clone o repositório:
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio/terraform-atv

2. Inicialize o projeto Terraform:
   terraform init

3. Verifique o plano de execução:
   terraform plan

4. Aplique a infraestrutura:
   terraform apply

5. (Opcional) Destrua os recursos criados:
   terraform destroy

---

## O que é Importante / Boas Práticas

> Atenção à Segurança:
> 1. NUNCA suba arquivos .tfstate ou .tfvars para repositórios públicos. Eles contêm metadados e potenciais credenciais em texto puro. Garanta que o .gitignore esteja cobrindo esses arquivos.
> 2. Bucket S3 Global Name: Os nomes de buckets S3 na AWS devem ser únicos no mundo todo. Caso precise rodar este código, edite o atributo bucket no main.tf para um nome exclusivo.
> 3. Limpeza de Recursos: Sempre execute terraform destroy ao terminar seus testes para garantir o encerramento dos recursos na AWS.
