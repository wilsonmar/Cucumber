FROM ubuntu:16.04
RUN apt-get update
RUN apt-get update && apt-get install -y \
  default-jre \
  default-jdk \
  git \
  maven 

RUN mvn -version
RUN git clone https://github.com/cucumber/cucumber-jvm.git --depth=1
CMD ls
RUN cd cucumber-jvm/examples/java-calculator --depth=1 && mvn test
