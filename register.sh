  az spring application-accelerator customized-accelerator create \
    --resource-group ${ASA_SERVICE_RG} \
    --service ${ASA_SERVICE_NAME} \
    --name workshop-registeration-branch \
    --display-name "Workshop registration branch" \
    --git-branch registration \
    --git-interval 10 \
    --git-url ${ACC_WORKSHOP_SAMPLES_REPO}