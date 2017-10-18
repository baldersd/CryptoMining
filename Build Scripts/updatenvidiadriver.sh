#!/bin/bash
apt-get update
add-apt-repository -y "ppa:graphics-drivers/ppa"
apt-get update
apt-get upgrade
