# dockerandsalt
A small working example based on the following tutorial:

[http://thomason.io/automating-application-deployments-across-clouds-with-salt-and-docker/](http://thomason.io/automating-application-deployments-across-clouds-with-salt-and-docker/)

It was setup to play with docker and salt in a virtual machine (Virtualbox) provided by Vagrant. The virtual machine 
is a masterless minion.

## Usage
To start the apache docker-image inside the ubuntu-vm virtual machine:

### Prerequisites: Install vagrant on your machine
```
sudo apt-get install vagrant # this will work on debian-based linux-distros
```

### To start:
```
vagrant up
vagrant ssh ubuntu-vm -c 'sudo salt-call --local state.highstate'
```

### To test:
In your favorite browser open the following url:

[http://localhost:8089](http://localhost:8089)

and you should see the apache default page.


### To inspect:  
```
yourhost% vagrant status # to check the status on your virtual machine
yourhost% vagrant ssh # you can log into the ubuntu-vm with
vagrant@ubuntu-vm:~$ sudo docker images # to list the docker images in the virtual machine
vagrant@ubuntu-vm:~$ sudo docker ps # to list the running docker images
```

### To shutdown, exit out of the virtual machine
```
vagrant@ubuntu-vm:~$ exit
yourhost% vagrant halt # to stop the virtual machine
yourhost% vagrant destroy # to delete the virtual machine
```