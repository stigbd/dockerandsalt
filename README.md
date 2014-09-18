dockerandsalt
=============

A small working example based on the following tutorial:

[http://thomason.io/automating-application-deployments-across-clouds-with-salt-and-docker/](http://thomason.io/automating-application-deployments-across-clouds-with-salt-and-docker/)

It was setup to play with docker and salt in a virtual machine (Virtualbox) provided by Vagrant. The virtual machine 
is a masterless minion.

To start the apache docker-image inside the ubuntu-vm virtual machine:
--------------
```
sudo apt-get install vagrant # this will work on debian-based linux-distros
vagrant up
vagrant ssh ubuntu-vm -c 'sudo salt-call --local state.highstate'
```

In your favorite browser open the following url:

[http://localhost:8089](http://localhost:8089)

and you should see the apache default page.
