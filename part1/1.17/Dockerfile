FROM debian:latest

RUN apt-get -y update && apt-get -y install default-jdk
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/
RUN export JAVA_HOME

CMD ["/bin/bash"]