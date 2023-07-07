## App Accelerator Workshop
This repo is step by step guide on how to learn various aspects of application accelerator i.e. UI, engine, and transformations. Each step is broken up in modular section and added as a separate branch. 

#### Main branch
Check out the repo and test out the main branch content. It is a simple rest controller

### Accelerator Registration
Check out the `registration` branch. In this lab, we create accelerator.yaml file which is used to show all the UI options and holds all the transformations. There are two ways to publish the accelerators -
* Azure Spring Apps Enterprise Portal
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
#### [View difference from main branch](https://github.com/dipalpat/app-accelerator-workshop/compare/main...registration)

### UI Options
* Check out `ui-options` branch
* Register the accelerator to TAP or Azure Spring Apps Instance. (If sharing same instance, change the accelerator & display name to avoid someone overriding it)
* If this accelerator is already registered, ensure you change the branch to `ui-options`
### [View difference from main branch](https://github.com/dipalpat/app-accelerator-workshop/compare/registration...ui-options)
  
### Transforms-1 - Change artifactID
* Check out `transforms-1` branch
* Register the accelerator to TAP or Azure Spring Apps Instance. (If sharing same instance, change the accelerator & display name to avoid someone overriding it)
* If this accelerator is already registered, ensure you change the branch to `transforms-1`
#### [View difference from main branch](https://github.com/dipalpat/app-accelerator-workshop/compare/ui-options...transforms-1)