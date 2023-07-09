## App Accelerator Workshop
This repo is step by step guide on how to learn various aspects of application accelerator i.e. UI, engine, and transformations. Each step is broken up in modular section and added as a separate branch. You can follow steps listed below or skip and try out the last `complete-lab` branch.

### Main branch
Check out this repo and test out the `main` branch content. It is a simple spring boot rest controller for demo purposes. This could be any of the pattern or existing blueprint available as git repo as a base to build on.

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
* For this iteration we will focus on Azure Spring Apps Enterprise CLI or Azure Portal way for publishing the app accelerator.
* [View difference from main branch](https://github.com/dipalpat/app-accelerator-workshop/compare/main...registration)

### UI Options
* Check out `ui-options` branch
* Register the accelerator to TAP or Azure Spring Apps Instance. (If sharing same instance, change the accelerator & display name to avoid someone overriding it)
* If this accelerator is already registered, ensure you change the branch to `ui-options`
* [View difference from registration branch](https://github.com/dipalpat/app-accelerator-workshop/compare/registration...ui-options)
  
### Transforms-1
* Check out `transforms-1` branch
* Set App Accelerator or TAP GUI endpoint in `acc-engine-endpoint.sh`
* To test locally, execute `./run.sh`. This requires Tanzu CLI and accelerator plugin installed. You should see `output` folder created if the command ran succesfully. `output` folder will have the resulting project after execution for local feedback loop.
* Register the accelerator to TAP or Azure Spring Apps Instance. (If sharing same instance, change the accelerator & display name to avoid someone overriding it)
* If this accelerator is already registered, ensure you change the branch to `transforms-1`
* This section introduces to the chain transform and include and exclude filters. This sets the foundation for next lab that build on this.
* [View difference from ui-options branch](https://github.com/dipalpat/app-accelerator-workshop/compare/ui-options...transforms-1)

### Transforms-2
* Check out `transforms-2` branch
* Set App Accelerator or TAP GUI endpoint in `acc-engine-endpoint.sh`
* To test locally, execute `./run.sh`. This requires Tanzu CLI and accelerator plugin installed. You should see `output` folder created if the command ran succesfully. `output` folder will have the resulting project after execution for local feedback loop.
* Register the accelerator to TAP or Azure Spring Apps Instance. (If sharing same instance, change the accelerator & display name to avoid someone overriding it)
* If this accelerator is already registered, ensure you change the branch to `transforms-2`
* We now add another include filter on top of previous lab and add substitution logic to replace `helloworld` references within `pom.xml`. Explain the behavior of chain tranform. 
* [View difference from transforms-1 branch](https://github.com/dipalpat/app-accelerator-workshop/compare/transforms-1...transforms-2)

### Transforms-3
* Check out `transforms-3` branch
* Set App Accelerator or TAP GUI endpoint in `acc-engine-endpoint.sh`
* To test locally, execute `./run.sh`. This requires Tanzu CLI and accelerator plugin installed. You should see `output` folder created if the command ran succesfully. `output` folder will have the resulting project after execution for local feedback loop.
* Register the accelerator to TAP or Azure Spring Apps Instance. (If sharing same instance, change the accelerator & display name to avoid someone overriding it)
* If this accelerator is already registered, ensure you change the branch to `transforms-3`
* Introduce `merge` transform and it's difference from `chain` transform. Add transform to replace packageName and Java version.
* [View difference from transforms-2 branch](https://github.com/dipalpat/app-accelerator-workshop/compare/transforms-2...transforms-3)

### Transforms-4
* Check out `transforms-4` branch
* Set App Accelerator or TAP GUI endpoint in `acc-engine-endpoint.sh`
* To test locally, execute `./run.sh`. This requires Tanzu CLI and accelerator plugin installed. You should see `output` folder created if the command ran succesfully. `output` folder will have the resulting project after execution for local feedback loop.
* Register the accelerator to TAP or Azure Spring Apps Instance. (If sharing same instance, change the accelerator & display name to avoid someone overriding it)
* If this accelerator is already registered, ensure you change the branch to `transforms-4`
* Introduce OpenRewrite and how to invoke recipes within accelerators. In this lab, we use `org.openrewrite.java.ChangePackage` recipe to change package name.
* [View difference from transforms-3 branch](https://github.com/dipalpat/app-accelerator-workshop/compare/transforms-3...transforms-4)

### Complete Lab
* Check out `comlete-lab` branch
* Set App Accelerator or TAP GUI endpoint in `acc-engine-endpoint.sh`
* To test locally, execute `./run.sh`. This requires Tanzu CLI and accelerator plugin installed. You should see `output` folder created if the command ran succesfully. `output` folder will have the resulting project after execution for local feedback loop.
* Register the accelerator to TAP or Azure Spring Apps Instance. (If sharing same instance, change the accelerator & display name to avoid someone overriding it)
* If this accelerator is already registered, ensure you change the branch to `complete-lab`
* This is a complete lab and accelerator that includes all the previous labs. In this lab, we introduce YTT (YAML Templating Tool) transform and how to generate YAML files. YTT is part of [Carvel.dev](https://carvel.dev) set of OSS tools. 
* [View difference from transforms-4 branch](https://github.com/dipalpat/app-accelerator-workshop/compare/transforms-4...complete-lab)
