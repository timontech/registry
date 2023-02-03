# Makefile

BINARY_ANSIBLE = ansible
BINARY_ANSIBLE_GALAXY = ansible-galaxy
BINARY_ANSIBLE_PLAYBOOK = ansible-playbook

import:
	@cp /environment/ansible.cfg /processing
	@cp -r /environment/inventory /processing
	@cp -r /environment/.ansible /processing
	@cp /environment/requirements.yml /processing
	@rsync -av /blueprint/$(BLUEPRINT_PATH)/ /processing/
	@rsync -av /export/ /processing/
	@rsync -av /input/ /processing/

init:
	@if [ ! -f /processing/requiremenst.yml ]; then $(BINARY_ANSIBLE_GALAXY) role install -v -f -r /ansible/requirements.yml -p /processing/.ansible/roles; fi
	@if [ ! -f /processing/requiremenst.yml ]; then $(BINARY_ANSIBLE_GALAXY) collection install -v -f -r /ansible/requirements.yml -p /processing/.ansible/collections; fi

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
