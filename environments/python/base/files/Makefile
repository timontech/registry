# Makefile

BINARY_PYTHON = python3

import:
	@cp /environment/main.py /processing/main.py
	@rsync -av /blueprint/$(BLUEPRINT_PATH)/ /processing/
	@rsync -av /export/ /processing/
	@rsync -av /input/ /processing/

init:
	@$(BINARY_PYTHON) main.py init

validate:
	@$(BINARY_PYTHON) main.py validate

check:
	@$(BINARY_PYTHON) main.py check

create:
	@$(BINARY_PYTHON) main.py create

reconcile:
	@$(BINARY_PYTHON) main.py reconcile

destroy:
	@$(BINARY_PYTHON) main.py destroy

refresh:
	@$(BINARY_PYTHON) main.py refresh

status:
	@$(BINARY_PYTHON) main.py status

export:
	@$(BINARY_PYTHON) main.py export

PHONY: import init validate prepare create reconcile destroy refresh status export
