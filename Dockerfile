FROM hanscoder/ubuntu:v1.0
MAINTAINER Hans Sowa "hanssowa@gmail.com"

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update && \
    apt-get install -y oracle-java8-installer && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jkd8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
