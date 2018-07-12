#!/bin/bash
export py=python

# 安装pyhon3.6.5
apt-get update
apt-get install --yes python3.6
ln -sf /usr/bin/python3.6 /usr/bin/python3
ln -sf /usr/bin/python3 /usr/bin/python
ln -sf /usr/bin/pip3 /usr/bin/pip
apt-get install --yes python3-dev
apt-get install --yes libpython3.6-dev
apt-get install --yes python3-pip
pip3 install --upgrade pip

# 解决ModuleNotFoundError: No module named 'pip._internal'
python3 -m pip install --upgrade pip

apt-get install --yes libmysqld-dev
apt-get install --yes uwsgi-plugin-python
apt-get install --yes swig
apt-get install --yes libssl-dev
apt-get install --yes pylint
apt-get install --yes mysql-client
apt-get install --yes libfreetype6-dev
apt-get install --yes libjpeg-dev
apt-get install --yes libxml2-dev libxslt-dev
apt-get install --yes python-yaml
apt-get install --yes python-lxml
apt-get install --yes libyaml-cpp-dev
apt-get install --yes libffi-dev libssl-dev
ln -sf /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib
pip3 install -r `dirname ${BASH_SOURCE[0]}`/requirements.txt
