FROM duruo850/base

# Install packages
ENV DEBIAN_FRONTEND noninteractive

# Add image configuration and scripts
RUN apt-get install -y mysql-server
ADD my.cnf /etc/mysql/conf.d/my.cnf 
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

# remove apt temp files
RUN rm -rf /var/lib/apt/lists/*

VOLUME ["/var/lib/mysql"]
CMD ["/usr/local/bin/run"]
