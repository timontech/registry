# Makefile

BINARY_ANSIBLE = ansible
BINARY_ANSIBLE_PLAYBOOK = ansible-playbook

export ANSIBLE_ROLES_PATH=/processing/.ansible/roles

import:
	@cp /environment/ansible.cfg /processing
	@cp -r /environment/inventory /processing
	@cp -r /environment/.ansible /processing
	@cp /environment/requirements.yml /processing
	@rsync -av /blueprint/$(BLUEPRINT_PATH)/ /processing/
	@rsync -av /export/ /processing/
	@rsync -av /input/ /processing/

init:
	@echo NOT IMPLEMENTED

validate:
	@echo NOT IMPLEMENTED

check:
	@echo NOT IMPLEMENTED

create:
	@$(BINARY_ANSIBLE_PLAYBOOK) /processing/playbook-create.yml

reconcile:
	@$(BINARY_ANSIBLE_PLAYBOOK) /processing/playbook-reconcile.yml

destroy:
	@$(BINARY_ANSIBLE_PLAYBOOK) /processing/playbook-destroy.yml

refresh:
	@echo NOT IMPLEMENTED

status:
	@echo NOT IMPLEMENTED

export:
	@cp -r /processing/* /export

PHONY: import init validate prepare create reconcile destroy refresh status export
