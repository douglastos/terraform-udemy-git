# comandos aprendidos

```bash

$ terraform validate              #VALIDAR CODIGO
$ terraform fmt                   #ajusta identação
$ terraform plan                  #planeja a entra da infraestrutura
$ terraform apply                 #aplica validacao com confirmacao
$ terraform apply -auto-approve   #aplica validacao sem confirmacao

```

### usar az cli com docker
```bash
$ docker run -it mcr.microsoft.com/azure-cli
bash-5.1#
bash-5.1# az version
{
  "azure-cli": "2.32.0",
  "azure-cli-core": "2.32.0",
  "azure-cli-telemetry": "1.0.6",
  "extensions": {}
}
bash-5.1# az login #seguir as intrucoes do terminal para o login

```
Lembrando que esse recurso deve ser usado quando nao tem como instalar o cli local, pelo motivo que ele é mais demorado que o local.


### comando az uteis

```bash
$ az <comand> <subcomand> --help                                   #obtendo ajuda para comando
$ az group create --location eastus --resource-group myRG          #cria resource groups
$ az vm create --resource-group myRG --name myVM --imagem alpine   #cria VM c/imagem alpine
$ az vm create -g myRG -n myVM --imagem win2016datacenter          #cria VM c/imagem Windows Server
$ az vm start --resource-group myRG --name myVM                    #start a VM setada
$ az vm restart --resource-group myRG --name myVM                  #restart a VM setada
$ az vm stop --resource-group myRG --name myVM                     #stop na VM setada
$ az vm deallocate --resource-group myRG --name myVM               #"desaloca" a VM setada
$ az vm delete --resource-group myRG --name myVM                   #deleta a VM setada
$ az vm redeploy --resource-group myRG --name myVM                 #faz deploy novamente
$ az vm list                                                       #lista as VM do RG      
$ az vm show --resource-group myRG --name myVM                     #info sobre a VM setada
```




