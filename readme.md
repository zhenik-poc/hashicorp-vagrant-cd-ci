![](https://github.com/zhenik-poc/hashicorp-vagrant-cd-ci/workflows/CI/CD/badge.svg)
# Hashicorp vagrant CD/CI
Example of CD/CI for nomad jobs: 
- Consul
- Nomad
- Vagrant
- Ansible
- Docker
## Test strategy
1. Use [Vagrant box with installed HashiCorp](https://github.com/fredrikhgrelland/vagrant-hashistack) stack (Consul, Nomad, Vault, etc...)
2. Use [Ansible integration with Vagrant](https://www.vagrantup.com/docs/provisioning/ansible_local.html) for provisioning 
    * Wait for nomad available
    * Run nomad job(s)
    * Wait until all service's healthchecks become in status `passing` 
    
    

## References
* [Vagrant box with installed HashiCorp stack](https://github.com/fredrikhgrelland/vagrant-hashistack)
* [Conditional provisioning ansible with vagrant 1](http://www.inanzzz.com/index.php/post/wfj9/running-ansible-provisioning-by-passing-arguments-in-vagrant)
* [Conditional provisioning ansible with vagrant 2](https://gist.github.com/phantomwhale/9657134) 

```
ANSIBLE_ARGS='--extra-vars "mode=test"' vagrant up provision 
```

Some update 1