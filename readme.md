Prerequisite
============
* Ruby
* Python / pip
* virtualenv

Installation
==========

* Install homebrew
* Install Ansible

Install Python3
=================
```
brew install python3
```

Install Homebrew
=============
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install Ansible
=============
```
brew install ansible
```


How to use ?
===============
```
brew install <file>.rb
```

how to use aws ssm session
------------------------

```
aws ssm start-session --target i-614416ed
```

Backup your brew setup
======================
* [Backup blog](https://tomlankhorst.nl/brew-bundle-restore-backup/)

```
brew bundle dump
# creates or overwrites a Brewfile
```

* cd here and run `brew bundle`

Cleanup unused deps
----------------

```
brew cleanup
```

Check linkage and sanity
-----------------

```
brew doctor
```


Installing version of helm and kubectl
---------------
You can install a specific version of a brew package by adding `@`

```
brew install kubernetes-cli@1.11.1
```

Or you can use above formula https://github.com/kenichi-shibata/homebrew-cli/blob/master/kubernetes-cli-1-11.rb

```
brew install https://raw.githubusercontent.com/kenichi-shibata/homebrew-cli/master/kubernetes-cli-1-11.rb
```

Make sure to do 

``` 
brew unlink kubernetes-cli 
```

If you have previous installed versions of Kubernetes


then link the binary using

```
brew link kubernetes-cli-1-11                                                                                                 
```


This is good because of kubectl 2 minor version skew where some kubectl commands do not work properly because of api changes

https://kubernetes.io/docs/setup/version-skew-policy/#kubectl
