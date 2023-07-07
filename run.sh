source ./acc-engine-endpoint.sh
if [ -d ./output ]; then rm -Rf ./output; fi
tanzu acc generate-from-local --accelerator-path demo=. --options-file=options.json --server-url=$ACC_EP  -o=./output --force
