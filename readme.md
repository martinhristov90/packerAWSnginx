# How to create a AMI image with Packer providing Nginx webserver.

# Purpose:

This repository's sole purpose is to demonstrate how to built a AWS with Packer providing Nginx webserver.

# Technologies in use :

- Packer
- Vagrant
- VirtualBox
- Nginx

# How to install the pre-requisites:

- [How to install Vagrant](https://www.vagrantup.com/docs/installation/)
- [How to install VirtualBox](https://www.virtualbox.org/manual/ch02.html)

# How to use:

- Execute `git clone https://github.com/martinhristov90/packerAWS.git`.
- Change into directory packerAWS with `cd packerAWS`.
- Start Vagrant with VirtualBox provider by executing `vagrant up`.
- SSH into the Vagrant box with `vagrant ssh`
- Change into directory ~/buildDir with `cd ~/buildDir`.
- Run `packer build packer build -var 'aws_access_key=YOUR_AWS_KEY' -var 'aws_secret_key=YOUR_AWS_SECRET_KEY' templateAWS.json` or set them using environment variables using : `export AWS_ACCESS_KEY_ID=YOUR_AWS_KEY` and `export AWS_SECRET_ACCESS_KEY=YOUR_AWS_SECRET_KEY`.
- If AWS keys are set using environment variables, use `packer build templateAWS.json`.
- After Packer finishes successfully, your AMI image can be found in AMIs section for `us-east-1` region.
- The `templateAWS.json` contains instructions for Packer builders how to install Nginx webserver.
- Now you should have AMI with Nginx installed.
