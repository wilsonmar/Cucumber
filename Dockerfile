FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y   default-jre   default-jdk   git curl
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs
RUN npm -v
RUN node -v
RUN apt-get update
RUN curl -sL  https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN npm -v && node -v
RUN git clone https://github.com/pact-foundation/pact-js.git
RUN cd pact-js && npm install ; exit 0
RUN cd pact-js/examples/e2e && npm install
RUN cd pact-js/examples/e2e && npm run test:consumer
RUN cd pact-js/examples/e2e && npm run test:publish
RUN cd pact-js/examples/e2e && npm run test:provider