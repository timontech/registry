# Makefile

BINARY_ANSIBLE = ansible

export ANSIBLE_ROLES_PATH=/processing/.ansible/roles

import:
	@cp /environment/ansible.cfg /processing
	@cp -r /environment/.ansible /processing
	@cp /environment/requirements.yml /processing
	@rsync -av /blueprint/$(BLUEPRINT)/ /processing/
	@rsync -av /export/ /processing/
	@rsync -av /input/ /processing/

init:
	@echo

validate:
	@echo

check:
	@echo

create:
	@echo

reconcile:
	@echo

destroy:
	@echo

refresh:
	@echo

status:
	@echo

export:
	@echo

PHONY: import init validate prepare create reconcile destroy refresh status export
