# Demos usadas no meetup 22/04/22
Demos de Terraform + AWS usadas no meetup.

## Pré-requisitos
* Terraform instalado
* Conta da AWS e credenciais configuradas localmente

## `demo-s3`
Configura um [bucket s3](https://aws.amazon.com/pt/s3/) na AWS.   
Essa demo não tem [backend](https://www.terraform.io/language/settings/backends) configurado, o estado é salvo localmente.

## `demo-website`
***IMPORTANTE**: Essa demo usa um backend do s3, que deve ter sido criado previamente, após isso, alterar no arquivo `backend.tf`:
```
    bucket = "terraform-sobral-devops-lab-tf-state"
    key    = "terraform-test.tfstate"
```
Configura uma [instância EC2](https://aws.amazon.com/pt/ec2/) com as seguintes configurações:
* Security group com as portas 80 (liberadas para a Internet) e 22 (liberada para o IP da máquina que criou o recurso)
* Par de chaves SSH para acessar a máquina
* Instala e configura docker na máquina
* Executa container da demo na porta 80

A infraestrutura demora em torno de 1min30s para ficar disponível, quando estiver, executar o seguinte para consultar o IP público:   
`terraform output instance_public_ip_addr`








