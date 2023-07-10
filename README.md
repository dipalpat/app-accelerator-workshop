## App Accelerator Workshop
This repo is step by step guide on how to learn various aspects of application accelerator i.e. UI, engine, and transformations. Each step is broken up in modular section and added as a separate branch. You can follow individual branch or skip and try out the last `complete-lab` branch.

### Transforms-1
* Check out `transforms-1` branch
* Set App Accelerator or TAP GUI endpoint in `acc-engine-endpoint.sh`
* To test locally, execute `./run.sh`. This requires Tanzu CLI and accelerator plugin installed. You should see `output` folder created if the command ran succesfully. `output` folder will have the resulting project after execution for local feedback loop.
* Register the accelerator to TAP or Azure Spring Apps Instance. (If sharing same instance, change the accelerator & display name to avoid someone overriding it)
* If this accelerator is already registered, ensure you change the branch to `transforms-1`
* This section introduces to the chain transform and include and exclude filters. This sets the foundation for next lab that build on this.
* [View difference from ui-options branch](https://github.com/dipalpat/app-accelerator-workshop/compare/ui-options...transforms-1)
