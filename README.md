# PoC Terraform com LocalStack

Este repositório contém uma prova de conceito (PoC) para provisionamento de infraestrutura local utilizando **Terraform** com o **LocalStack**. A aplicação alvo é uma aplicação ASP.NET localizada em `./src/Web/WebBff`.

## 🔧 Tecnologias utilizadas

- [Terraform](https://www.terraform.io/)
- [LocalStack](https://localstack.cloud/)
- AWS (simulada via LocalStack)

---

## 📁 Estrutura do Projeto

```bash
PoC-terraform/
├── src/
│   └── Web/
│       └── WebBff/         # Aplicação ASP.NET
└── terraform/
    ├── provider.tf         # Configuração do LocalStack como provedor AWS
    ├── s3.tf               # Criação de bucket S3
    ├── ec2.tf              # Criação de instância EC2 simulada
    ├── outputs.tf          # Variáveis de saída
````

---

## 🚀 Como rodar localmente com LocalStack

### Pré-requisitos

* Docker
* Terraform instalado globalmente ([https://developer.hashicorp.com/terraform/install](https://developer.hashicorp.com/terraform/install))
* LocalStack (via Docker ou `localstack-cli`)
* CLI da AWS (opcional, para testes)

### Subindo o LocalStack

Você pode subir o LocalStack com Docker:

```bash
docker run --rm -it -p 4566:4566 -p 4571:4571 localstack/localstack
```

Ou usar o CLI do LocalStack:

```bash
localstack start
```

---

## 📦 Inicializando o Terraform

No diretório `terraform`, execute os comandos abaixo:

```bash
cd terraform

# Inicializa o Terraform
terraform init

# Mostra o plano de execução
terraform plan

# Aplica a infraestrutura local
terraform apply
```

---

## ✅ Recursos criados

Esses recursos são simulados no LocalStack:

* Bucket S3: `aspnet-app-deploy`
* Instância EC2 (simulada): usando uma AMI fictícia
* Saídas visíveis: nome do bucket

---

## 🧪 Observando os recursos criados

Você pode verificar os recursos via:

* [Painel Web do LocalStack](https://app.localstack.cloud/instances)
* AWS CLI (configurada para apontar para o LocalStack)
* Logs do Docker

---

## 📌 Observações

* A instância EC2 criada **não executa** uma VM real no LocalStack, apenas simula a criação.
* O bucket S3 é funcional localmente — você pode subir arquivos nele usando SDKs ou AWS CLI com endpoint local.
