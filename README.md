# System Kickstart

### What?

A simple Ansible project to manage (i.e. prepare a working setup) on a fresh (Linux - Fedora/RedHat based) machines without human intervention.

**Note:** This is not for any certification preperation (like RHCE). One can take references relevant to Ansible concepts but it doesn't adhere to any certification course path or syllabus.

This is meant for personal usage (and probably for others in the future).

## How to Use?

### General Overview

Let's say you have a fresh installation Fedora/CentOS/Rocky/RedHat linux on your machine 'MyLaptop'. Now you want to have all of your favourite apps installed, all of your custom configurations and tweaks done automatically while you enjoy spending your time elsewhere. 

Since your needs probably differ than rest of us, you may have to provide some inputs on your behalf.

But _"didn't you say earlier something about **no intervention**?"_. Yes, your inputs are required only once and then you can use this as many times as you wish.

***TIP:*** This guide prefers that you _DON'T_ have ansible/ansible-core installed on your system. Everything will be installed in a virtual environment which is kinda "community" preferred way as well. And clean too.

1. This project assumes that you have Podman installed. If not, DO IT!!

```bash
sudo dnf install podman
```

2. It assumes that your system is already have Python3 installed. If not, DOOO ITTT!!!

```bash
sudo dnf install python3-devel
```

Or, you could have installed them in 1 single command if you have some patience reading this documentation.

3. Execute the 'bootstrap.sh' (make sure it is executable).

```bash
chmod u+x ./bootstrap.sh
./bootstrap.sh
```
### Why bother?

So for me, the cycle goes like this:

1. I install Fedora as my reliable daily driver.
2. I begin to setup the things I want, _the way I want_.
3. I create a mess over time or go and try messing things up at some other place (distro hopping).
4. I don't like things as they are now.
5. I nuke the current world and go to step 1.

Over time, I have learnt not to create mess elsewhere but I still create them here (at Fedora), can't help it.
Rest of the steps are fine EXCEPT for 2nd. It's the most redundant, time consuming piece of the entire process! So I thought of taking care of it by "automating" it.