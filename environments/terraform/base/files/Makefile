# Makefile

BINARY_TERRAFORM = /environment/terraform

PARAM_CHDIR = -chdir=/processing
PARAM_BACKEND_CONFIG = -backend-config=/environment/tcs-backend.hcl

# https://www.terraform.io/cli/config/environment-variables
export TF_DATA_DIR=/processing/.terraform
export TF_CLI_CONFIG_FILE=/processing/tcs.tfrc

import:
	@cp /environment/tcs.tfrc /processing/tcs.tfrc
	@cp /environment/tcs-backend.tf /processing
	@rsync -av /blueprint/$(BLUEPRINT_PATH)/ /processing/
	@rsync -av /export/ /processing/
	@rsync -av /input/ /processing/

init:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) $(PARAMS) init $(PARAM_BACKEND_CONFIG)

validate:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) validate $(PARAMS)

check:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) plan $(PARAMS)

create:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) apply -auto-approve $(PARAMS)

reconcile:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) apply -auto-approve $(PARAMS)

destroy:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) destroy -auto-approve $(PARAMS)

refresh:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) refresh $(PARAMS)

status:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) show $(PARAMS)

export:
	@cp -rf /processing/.terraform /export
	@cp -f /processing/.terraform.lock.hcl /export
	@cp -f /processing/terraform.tfstate* /export

PHONY: import init validate prepare create reconcile destroy refresh status export
