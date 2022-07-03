# Makefile

BINARY_TERRAFORM = /environment/terraform

PARAM_CHDIR = -chdir=/processing
PARAM_BACKEND_CONFIG = -backend-config=/environment/timon-backend.hcl

# https://www.terraform.io/cli/config/environment-variables
export TF_DATA_DIR=/processing/.terraform

import:
	@cp /environment/timon-backend.tf /processing
	@rsync -av /blueprint/$(BLUEPRINT)/ /processing/
	@rsync -av /import/ /processing/
	@rsync -av /input/ /processing/

init:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) init $(PARAM_BACKEND_CONFIG) -upgrade

validate:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) validate $(PARAMS) -json

prepare:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) plan $(PARAMS) -json

create:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) apply -auto-approve $(PARAMS) -json

reconcile:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) apply -auto-approve $(PARAMS) -json

destroy:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) destroy -auto-approve $(PARAMS) -json

refresh:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) refresh $(PARAMS) -json

status:
	@$(BINARY_TERRAFORM) $(PARAM_CHDIR) show $(PARAMS) -json

export:
	@cp -rf /processing/.terraform /export
	@cp -f /processing/.terraform.lock.hcl /export
	@cp -f /processing/terraform.tfstate* /export

PHONY: import init validate prepare create reconcile destroy refresh status export
