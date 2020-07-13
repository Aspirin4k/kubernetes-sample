# -*- mode: ruby -*-
# vi: set ft=ruby :
hosts = {
    "n1" => "192.168.77.10",
    "n2" => "192.168.77.11",
    "n3" => "192.168.77.12",
    "n4" => "192.168.77.13"
}
Vagrant.configure("2") do |config|
    config.ssh.insert_key = false
    config.ssh.forward_agent = true
    check_guest_additions = false
    functional_vboxsf = false

    config.vm.box = "bento/ubuntu-20.04"
    hosts.each do |name, ip|
        config.vm.define name do |machine|
            machine.vm.hostname = name
            machine.vm.network :private_network, ip: ip
            machine.vm.provider "virtualbox" do |v|
                v.name = name
                v.cpus = 2
                v.memory = 1024
            end
        end
    end
end