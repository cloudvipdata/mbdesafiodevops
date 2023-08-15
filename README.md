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
   
      1. Crear un pipeline en Jenkins y extraiga el Jenkinsfile para ejecutarlo
   
#################################################################################

2. Tasks
   Pre-requisitos:
   - Setear la clave de Github en Jenkins (Credentials)
   - Setear el User y Pass del ACR (Credentials)
   - Setear el .Config del Cluster AKS (Credentials)
  
     a. Crea un pipeline Jenkins y ejecutala el JenkinsFile.
     ![imagen](https://github.com/cloudvipdata/mbdesafiodevops/assets/141878891/a6f873d5-b914-4141-860a-141dbe389df1)

      
   


      

      
