#!/bin/bash

which curl docker make ruby || {
  sudo apt-get update
  sudo apt-get install -y curl make ruby
  sudo gem install rubyzip
  sudo apt-get clean
  

}

which packer || {
  cd /usr/local/bin
  curl -sSL https://raw.githubusercontent.com/kikitux/download-hashicorp-tools/master/download-packer.rb | sudo ruby
}