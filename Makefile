
.PHONY: up down clean status

# VAGRANT SSH to Node
define login_vagrant
	cd $(1) && vagrant ssh
endef

define login_ssh
	ssh -F $(1) $(2)
endef


# VM EXEC
define vm_exec
	ssh -F $(1) -t $(2) '$(3)'
endef

# VENV FUNCTIONS
define venv_init
	$(if [ ! -f "$($(1)/bin/activate)" ], virtualenv -p python3 $(1))
	( \
    	source $(1)/bin/activate; \
    	pip install -r $(2)/requirements.txt \
	)
endef

define venv_exec
	( \
    	source $(1)/bin/activate; \
    	$(2) \
	)
endef

# VAGRANT FUNCTIONS
define vm_up
	@echo "Provisioning Vagrant VM: $(1)"
	cd $(1) && vagrant up
endef

define vm_down
	@echo "Suspending Vagrant VM: $(1)"
	cd $(1) && vagrant suspend
endef

define vm_build
	@echo "Building Vagrant VM: $(1)"
	cd $(1) && vagrant provision
endef

define vm_clean
	@echo "Destroying Vagrant VM: $(1)"
	cd $(1) && vagrant destroy
endef

define vm_status
	@echo "Destroying Vagrant VM: $(1)"
	cd $(1) && vagrant status
endef

# DNS FUNCTIONS
define dns_up
    cd $(1) && vagrant dns --restart
endef

define dns_down
    cd $(1) && vagrant dns --stop
endef

define dns_build
    cd $(1) && vagrant dns --install
endef

define dns_status
	@cd $(1) && vagrant dns --status
	@cd $(1) && vagrant dns --list
endef

define dns_clean
	@cd $(1) && vagrant dns --uninstall
endef