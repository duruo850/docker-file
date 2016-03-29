# Introduction
python web dev tools：

apt-get install --yes python-dev

apt-get install --yes python-pip

apt-get install --yes libmysqld-dev

apt-get install --yes uwsgi-plugin-python

apt-get install --yes swig

apt-get install --yes libssl-dev

apt-get install --yes pylint

apt-get install --yes libfreetype6-dev

https://pypi.python.org/packages/2.7/p/pyxmpp2/pyxmpp2-2.0.0-py2.7.egg#md5=deb473e9747746629ade17c5114e85f8

easy_install pyxmpp2-2.0.0-py2.7.egg

pip install APScheduler==2.1.1

pip install SQLAlchemy==1.0.2

pip install xmltodict==0.9.2

pip install Cython==0.20.1

pip install MySQL-python==1.2.5

pip install pycrypto==2.6.1

pip install tornado==4.2

pip install DBUtils==1.1

pip install gevent==1.0.2

pip install ujson==1.33

pip install redis==2.10.3

pip install MarkupSafe==0.23

pip install Jinja2==2.7.3

pip install psutil==2.1.3

pip install credis==1.0.3

pip install pymysql==0.6.3

pip install gsocketpool==0.1.3

pip install mprpc==0.1.4

pip install Pillow==2.8.1

pip install gevent-websocket==0.9.5

pip install paho-mqtt==1.1

pip install docutils==0.12
	
#Environment variables

 - `GIT_RES_PATH`: The repository of the git project 
 - `RUN_PATH`: The run path in the git repository
 - `HTTP_PORT`: The port listening for http protocol when run
 - `TCP_PORT`: The port listening for tcp protocol when run
 - `UDP_PORT`: The port listening for udp protocol when run
 

#Example usage: 
sudo docker run -d --name fundtray_servermgr -p 16666:16666 -p 18888:18888 -p 16688:16688/udp -e GIT_RES_PATH=https://github.com/duruo850/FundTray.git -e RUN_PATH=FundTray/server/workspace/common_server/service_mgr/start.py duruo850/python-web --is_extranet 1 --db_host xxx.xxx.xxx.xxx --db_port 10306 --db_name xxxxx --db_user xxxxx --db_password xxxxx --http_port=16666 --tcp_port=18888 --udp_port=16688

sudo docker run -d --name fundtray_mmmda -p 20001:20001 -p 20002:20002 -e GIT_RES_PATH=https://github.com/duruo850/FundTray.git -e RUN_PATH=FundTray/server/workspace/mmm_da/start.py duruo850/python-web --is_extranet 1 --sm_ip xxx.xxx.xxx.xxx --db_host xxx.xxx.xxx.xxx --db_port 10306 --db_user xxxxx --db_password xxxxx --http_port=20001 --tcp_port=20002

