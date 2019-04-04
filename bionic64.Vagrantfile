box_base = "ubuntu/bionic64"
box_ram_mb = "4096"
box_cpu_count = "2"
nat_dns_resolver = "on"
host_name = "sandbox"

Vagrant.configure("2") do |config|
  config.vm.define "sandbox" do |sandbox|
    sandbox.vm.hostname = host_name
    sandbox.vm.box = box_base

    sandbox.vm.network :forwarded_port, guest: 80, host: 8080

    sandbox.vm.provider :virtualbox do |vbox|
      vbox.customize ["modifyvm", :id, "--natdnshostresolver1", nat_dns_resolver]
      vbox.customize ["modifyvm", :id, "--memory", box_ram_mb]
      vbox.customize ["modifyvm", :id, "--cpus", box_cpu_count]
      vbox.customize ["modifyvm", :id, "--name", host_name]
    end
  end
end
