# Makefile

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
	@echo NOT IMPLEMENTED

reconcile:
	@echo NOT IMPLEMENTED

destroy:
	@echo NOT IMPLEMENTED

refresh:
	@echo NOT IMPLEMENTED

status:
	@echo NOT IMPLEMENTED

export:
	@cp -r /processing/* /export

PHONY: import init validate prepare create reconcile destroy refresh status export
