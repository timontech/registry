# Makefile

BINARY_KUBECTL = /environment/kubectl

import:
	@rsync -av /blueprint/$(BLUEPRINT)/ /processing/
	@rsync -av /export/ /processing/
	@rsync -av /input/ /processing/

init:
	@$(BINARY_KUBECTL)

validate:
	@$(BINARY_KUBECTL)

prepare:
	@$(BINARY_KUBECTL)

create:
	@$(BINARY_KUBECTL)

reconcile:
	@$(BINARY_KUBECTL)

destroy:
	@$(BINARY_KUBECTL)

refresh:
	@$(BINARY_KUBECTL)

status:
	@$(BINARY_KUBECTL)

export:
	@echo

PHONY: import init validate prepare create reconcile destroy refresh status export
