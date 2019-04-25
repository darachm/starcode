Bootstrap: docker
From: ubuntu:18.04
#Bootstrap: localimage
#From: ../ubuntu-1804-updated_container/ubuntu.simg

%labels
MAINTAINER darachm

%help

    This makes a singularity container for starcode
    
%post

    apt-get -y update
    apt-get -y upgrade
    apt-get -y install git g++ gcc-4.8 make

    cd /home
    git clone https://github.com/gui11aume/starcode
    make -C starcode
    mv starcode/starcode /starcode

%test

    /starcode -h

