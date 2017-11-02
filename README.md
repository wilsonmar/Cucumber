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
