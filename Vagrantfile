# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 config.vm.box = "centos/7"

 config.vm.define "box1" do |box1|
     box1.vm.network "private_network", ip: "172.20.20.10"
     box1.vm.network   :forwarded_port, guest: 80, host: 80, auto_correct: false
     box1.vm.network   :forwarded_port, guest: 443, host: 443, auto_correct: false
     box1.vm.provision "shell",
       inline: "sudo yum install git -y"
     box1.vm.provision "shell",
       inline: "git clone https://github.com/Zuko620514/ots.git"
	   
 end

end