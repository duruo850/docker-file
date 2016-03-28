FROM duruo850/base

RUN apt-get install -y python-dev
RUN apt-get install -y python-pip
RUN apt-get install -y libmysqld-dev
RUN apt-get install -y uwsgi-plugin-python
RUN apt-get install -y swig
RUN apt-get install -y libssl-dev
RUN apt-get install -y pylint
RUN apt-get install -y libfreetype6-dev
RUN apt-get install -y git
RUN apt-get install -y mysql-client

# for pillow
RUN apt-get install -y libjpeg-dev
RUN ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib/

# pyxmpp2
RUN apt-get install -y wget
RUN wget https://pypi.python.org/packages/2.7/p/pyxmpp2/pyxmpp2-2.0.0-py2.7.egg#md5=deb473e9747746629ade17c5114e85f8
RUN easy_install pyxmpp2-2.0.0-py2.7.egg

ADD requirements.txt ./
RUN pip install -r requirements.txt

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

VOLUME ["/run"]
ENTRYPOINT ["/usr/local/bin/run"]