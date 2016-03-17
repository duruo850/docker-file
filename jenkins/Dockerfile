FROM duruo850/base

RUN apt-get install -y curl
RUN curl http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
RUN echo deb http://archive.ubuntu.com/ubuntu Trusty universe >> /etc/apt/sources.list
RUN echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list
RUN apt-get update
# HACK: https://issues.jenkins-ci.org/browse/JENKINS-20407
RUN mkdir /var/run/jenkins
RUN apt-get install -y jenkins=1.653
ADD run /usr/local/bin/



# remove apt temp files
RUN rm -rf /var/lib/apt/lists/*

EXPOSE 8080

VOLUME ["/var/lib/jenkins"]
CMD ["/usr/local/bin/run"]
