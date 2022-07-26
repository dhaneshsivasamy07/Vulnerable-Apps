#!/bin/bash

echo "DNOSCP Setup Script..."
sudo apt install -y fzf xclip flameshot adb python2 python3-pip2 jadx openjdk-11-jdk software-properties-common

echo "Creating Dirs..."
mkdir -p ~/tools/android

cd ~/tools/android

echo "Installing pip2..."
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py -O /tmp/pip2.py
sudo python2 /tmp/pip2.py

echo "Installing Drozer..."
pip2 install setuptools
pip2 install protobuf
pip2 install pyOpenSSL
pip2 install Twisted
pip2 install service_identity
wget https://github.com/FSecureLABS/drozer/releases/download/2.4.4/drozer-2.4.4-py2-none-any.whl -O /tmp/drozer.whl
pip2 install /tmp/drozer.whl

echo "Downloading Frida..."
echo "Architecture: arm64 files"
wget https://github.com/frida/frida/releases/download/15.2.2/frida-server-15.2.2-android-arm64.xz -O frida-server.xz
unxz frida-server.xz
wget https://github.com/frida/frida/releases/download/15.2.2/frida-gadget-15.2.2-android-arm64.so.xz -O frida-gadget.so.xz
unxz frida-gadget.so.xz

echo "Downloading tools"
echo -n "[*] Dex2tools\n[*]MobSF"
wget wget https://github.com/pxb1988/dex2jar/releases/download/v2.1/dex2jar-2.1.zip
unzip dex2jar-2.1.zip
git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF.git
