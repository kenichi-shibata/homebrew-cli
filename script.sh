#!/usr/bin/env bash

set -eo pipefail

install() {
for rb in $(ls *.rb) ; 
  do 
    echo "--- installing $rb----" ;
    brew install $rb || echo "Installing $rb failed" ;
done
}

list() {
ls -al *.rb
}

uninstall() {
for rb in $(ls *.rb) ; 
  do 
    echo "--- uninstalling $rb----" ;
    brew uninstall $rb || echo "Uninstalling $rb failed";
done
}

case $1 in 
  install) 
    install
    ;;
  list)
    list
    ;;
  uninstall)
    uninstall
    ;;
  *)
    echo "Usage: {install|list|uninstall}"
    exit 1
    ;;
esac

