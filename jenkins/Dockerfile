FROM duruo850/ubuntu-oracle-jdk

RUN apt-get install -y wget
RUN wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
RUN echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list
RUN apt-get update
RUN apt-get install -y jenkins=1.653

ADD run /usr/local/bin/
RUN chmod +x /usr/local/bin/run

# remove apt temp files
RUN rm -rf /var/lib/apt/lists/*

EXPOSE 8080

# unused volume, we want to save the jenkins jobs
#VOLUME ["/var/lib/jenkins"]
CMD ["/usr/local/bin/run"]
