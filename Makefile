up:
	vagrant up
down:
	vagrant destroy
test:
	 ANSIBLE_ARGS='--extra-vars "mode=test"' vagrant up --provision

