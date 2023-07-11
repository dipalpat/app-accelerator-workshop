BRANCH=transforms-1

az spring application-accelerator customized-accelerator create \
--resource-group ${ASA_SERVICE_RG} \
--service ${ASA_SERVICE_NAME} \
--name workshop-${BRANCH}-branch \
--display-name "Workshop ${BRANCH} branch" \
--git-branch ${BRANCH} \
--git-interval 10 \
--git-url ${ACC_WORKSHOP_SAMPLES_REPO}