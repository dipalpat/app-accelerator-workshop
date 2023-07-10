## App Accelerator Workshop
This repo is step by step guide on how to learn various aspects of application accelerator i.e. UI, engine, and transformations. Each step is broken up in modular section and added as a separate branch. You can follow individual branch or skip and try out the last `complete-lab` branch.


### Accelerator Registration
Check out the `registration` branch. In this lab, we create accelerator.yaml file which is used to show all the UI options and holds all the transformations. There are few ways to publish the accelerators -
* [Azure Spring Apps Enterprise Portal](https://learn.microsoft.com/en-us/azure/spring-apps/how-to-use-accelerator?tabs=Portal#manage-your-own-accelerators)
* Azure CLI
  * The step is to register the accelerator with Azure Spring Apps using the command below.You will need to make modifications to match where the Azure Spring Apps instance is deployed, along with the specific details of accelerator such as name, git repo it is located in, and display name.
  ```
  ASA_SERVICE_RG=demo && \
  ASA_SERVICE_NAME=demo-asa && \
  az spring application-accelerator customized-accelerator create \
    --resource-group ${ASA_SERVICE_RG} \
    --service ${ASA_SERVICE_NAME} \
    --name spring-boot-rest-api \
    --display-name "Spring Boot REST API" \
    --git-branch main \
    --git-interval 10 \
    --git-url https://github.com/asaikali/Spring-Boot-REST-API-Accelerator 
  ```
* Tanzu Application Platform
  * Out of scope for this iteration. To register app accelerator to TAP, we need to create CR and apply it to the cluster
* For this iteration we will focus on Azure CLI or Azure Portal for publishing the app accelerator.
* [View difference from main branch](https://github.com/dipalpat/app-accelerator-workshop/compare/main...registration)

