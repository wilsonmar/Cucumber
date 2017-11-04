This repository contains what is used to create a sample DevSecOps pipeline to build and test an Angular 4 web app.

1. The trigger is a git push from a laptop to the BitBucket cloud repository.
2. A hook fires off a Jenkins job.
3. The Jenkins job checks out SCM and builds. This is the first stage within Jenkins.
4. Jenkins runs a set of tests in parallel:
   * REST Assured
   * PACT for Contract Testing
   * JMeter for performance testing
   * Cucumber for BDD and testing using Selenium with Protractor
   * ZAP for penetration security testing
5. Jenkins emails reports.
6. Jenkins cleans up workspace.

<hr />

"# Cucumber" tool based on Behavior Driven Development (BDD) framework which is used to write acceptance tests for the web application. Test is triggered from Maven. Dockerfile in the repository does all the server setup over ubuntu image and installs Maven, GIT, JDK.

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

apt-cache policy docker-ce

sudo apt-get install -y docker-ce

sudo systemctl status docker

docker

Create Docker image from Dockerfile

docker build -f Dockerfile -t demo:cucumber . -- to create a docker image locally

docker images -- to list available docker images locally

docker run -it demo:cucumber bash -- to run and login into container

docker#container :

cd cucumber-java-skeleton/target

list available reports:

ls -ltr

cd surefire-reports | more TEST-skeleton.RunCukesTest.xml

docker ps -- to list running containers

docker ps -a -- to list all containers
