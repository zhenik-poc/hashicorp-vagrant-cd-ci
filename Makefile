.ONESHELL .PHONY: up down test
up:
	vagrant up
down:
	vagrant destroy
test:
	 ANSIBLE_ARGS='--extra-vars "mode=test"' vagrant up --provision
build:
	(cd packer; rm -rf output-hashistack; packer build -force .)
add-box:
	vagrant box add zhenik/fun file://packer/output-fun/package.box
