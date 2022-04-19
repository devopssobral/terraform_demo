# Demos usadas no meetup 22/04/22
Demos de Terraform + AWS usadas no meetup.

## Pré-requisitos
* Terraform instalado
* Conta da AWS e credenciais configuradas localmente

## `demo-s3`
Configura um [bucket s3](https://aws.amazon.com/pt/s3/) na AWS com as seguintes configurações

## `demo-website`
Configura uma [instância EC2](https://aws.amazon.com/pt/ec2/) com as seguintes configurações:
* Security group com as portas 80 (liberadas para a Internet) e 22 (liberada para o IP da máquina que criou o recurso)
* Par de chaves SSH para acessar a máquina
* Instala e configura docker na máquina
* Executa container da demo na porta 80








