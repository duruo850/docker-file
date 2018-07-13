#!/bin/bash
export py=python

# 安装pyhon3.6
apt-get update
apt-get install --yes python3.6
ln -sf /usr/bin/python3.6 /usr/bin/python3
ln -sf /usr/bin/python3 /usr/bin/python
apt-get install --yes python3-dev
apt-get install --yes libpython3.6-dev


# 解决ModuleNotFoundError: No module named 'pip._internal'
python3 -m pip uninstall --yes pip
apt-get remove --yes python3-pip
apt-get auto-remove --yes python3-pip
apt-get purge --yes python3-pip

apt-get install --yes python3-pip
python3 -m pip install --upgrade pip
ln -sf /usr/bin/pip3 /usr/bin/pip
pip3 install --upgrade pip

apt-get install --yes libmysqld-dev
apt-get install --yes uwsgi-plugin-python
apt-get install --yes swig
apt-get install --yes libssl-dev
DEBIAN_FRONTEND=noninteractive apt-get install --yes pylint
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

# 再进行一次python3链接，避免安装过程中被修改
ln -sf /usr/bin/python3.6 /usr/bin/python3
ln -sf /usr/bin/python3 /usr/bin/python
