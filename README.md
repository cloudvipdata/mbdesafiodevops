# mbdesafiodevops
1. IAC
   La carpeta 01_iac, Define un Archivo main.tf de terraform para aprovisionar la Infraestructura ACR y AKS
Pre-requisito:
Crear un Service Principal con  rol de contribuitor

Despliegue Forma 1:
   Si lo realizar por comandos de terrafrom: descargar el archivo main.tf
   ejecuatar el comando en el siguiente orde:
      1. terraform init
      2. terraform plan
      3. terraform apply -auto-approve

Despliegue de Forma 2:
   Desde el Servidor de Jenkins:
      1. Crea un conexión entre el repositorio de version y jenkins
       ![imagen](https://github.com/cloudvipdata/mbdesafiodevops/assets/141878891/e9c26fb4-34ba-4955-85d0-6787a921de60)
      2. Crea un Pipeline: Ingrese un nombre:
      
        ![imagen](https://github.com/cloudvipdata/mbdesafiodevops/assets/141878891/bd572b09-c37a-42aa-a24e-8c68f1d16a34)

      3.  

      
