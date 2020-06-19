Vagrant.configure("2") do |config|
  config.vm.box = "fredrikhgrelland/hashistack"
  config.vm.network "private_network", ip: "10.0.3.10"

  # Hashicorp consul ui
  config.vm.network "forwarded_port", guest: 8500, host: 8500, host_ip: "127.0.0.1"

  # Hashicorp nomad ui
  config.vm.network "forwarded_port", guest: 4646, host: 4646, host_ip: "127.0.0.1"

  config.vm.provider "virtualbox" do |vb|
      vb.memory = 4096
      vb.cpus = 2
  end
  config.vm.provision "ansible_local" do |startup|
      run = "always"
      startup.playbook = "/etc/ansible/startup.yml"
  end
  config.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "./ansible/playbook.yml"
      # default environment `dev`
      ansible.extra_vars = {
        mode: 'dev'
      }
      # use to override default mode to test for example
      ansible.raw_arguments = Shellwords.shellsplit(ENV['ANSIBLE_ARGS']) if ENV['ANSIBLE_ARGS']
  end
end