## App Accelerator Workshop
This repo is step by step guide on how to learn various aspects of application accelerator i.e. UI, engine, and transformations. Each step is broken up in modular section and added as a separate branch. You can follow individual branch or skip and try out the last `complete-lab` branch.

### Transforms-2
* Check out `transforms-2` branch
* Set App Accelerator or TAP GUI endpoint in `acc-engine-endpoint.sh`
* To test locally, execute `./run.sh`. This requires Tanzu CLI and accelerator plugin installed. You should see `output` folder created if the command ran succesfully. `output` folder will have the resulting project after execution for local feedback loop.
* Register the accelerator to TAP or Azure Spring Apps Instance. (If sharing same instance, change the accelerator & display name to avoid someone overriding it)
* If this accelerator is already registered, ensure you change the branch to `transforms-2`
* We now add another include filter on top of previous lab and add substitution logic to replace `helloworld` references within `pom.xml`. Explain the behavior of chain tranform. 
* [View difference from transforms-1 branch](https://github.com/dipalpat/app-accelerator-workshop/compare/transforms-1...transforms-2)

Proceed to the next lab and checkout `transforms-3` branch.
