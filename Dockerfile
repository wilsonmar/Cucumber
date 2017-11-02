FROM ubuntu:16.04
RUN apt-get update
RUN apt-get update && apt-get install -y \
  default-jre \
  default-jdk \
  git \
  maven 

RUN mvn -version
RUN git clone RUN git clone https://github.com/cucumber/cucumber-java-skeleton.git
CMD ls
RUN cd cucumber-java-skeleton && mvn test
