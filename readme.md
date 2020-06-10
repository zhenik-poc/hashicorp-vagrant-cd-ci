![](https://github.com/zhenik-poc/hashicorp-vagrant-cd-ci/workflows/test-consul-healthchecks/badge.svg)
# Hashicorp vagrant CD/CI
Example of CD/CI for nomad jobs with stack: 
- Consul
- Nomad
- Vagrant
- Ansible
## Notes
https://gist.github.com/phantomwhale/9657134 

http://www.inanzzz.com/index.php/post/wfj9/running-ansible-provisioning-by-passing-arguments-in-vagrant 

```
ANSIBLE_ARGS='--extra-vars "mode=test"' vagrant up provision 
```
## Todo
- [ ] [Conditional provisioning with ansible](https://stackoverflow.com/questions/28941494/conditionally-call-different-provision-in-vagrantfile) 