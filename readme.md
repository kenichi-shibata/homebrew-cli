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
