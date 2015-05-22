Vagrant.configure(2) do |config|
  config.vm.define "docker" do |docker|
    docker.vm.box = "ubuntu/trusty64"
    docker.vm.provision "shell", path: "https://raw.githubusercontent.com/NoUseFreak/vagrant-docker/master/vagrant-provision.sh", privileged: false
    docker.ssh.forward_agent = true
    docker.vm.network :private_network, ip: "33.33.33.30"
    docker.vm.hostname = 'docker'
    docker.vm.provider :virtualbox do |vb|
        vb.memory = 2048
        vb.cpus = 2
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    docker.vm.synced_folder "./", "/vagrant", nfs: true
  end
end
