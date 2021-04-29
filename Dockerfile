FROM ubuntu:latest
# FROM java

ENV DEBIAN_FRONTEND noninteractive

# RUN apt-get install gpgv
# RUN apt install gnupg pbuilder ubuntu-dev-tools apt-file
# RUN apt-get install debian-keyring debian-archive-keyring
# RUN gpg --keyserver pgp.mit.edu --recv-keys 7638D0442B90D010 8B48AD6246925553
# RUN gpg --armor --export 7638D0442B90D010 | apt-key add -
# RUN gpg --armor --export 8B48AD6246925553 | apt-key add -
# RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7638D0442B90D010 8B48AD6246925553
RUN echo "deb [check-valid-until=no] http://archive.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/jessie-backports.list
RUN sed -i '/deb http:\/\/deb.debian.org\/debian jessie-updates main/d' /etc/apt/sources.list
RUN apt-get -o Acquire::Check-Valid-Until=false update
# RUN apt-get update
# RUN apt-get install -y git 
# RUN apt-get --purge remove node 
# RUN apt-get --purge remove nodejs-legacy 
# RUN apt-get --purge remove nodejs 
# RUN apt-get update 
# RUN apt-get install -y npm nodejs libnode64
RUN apt-get install -y default-jre
# RUN npm install 
# RUN npm start 
RUN pwd
COPY $JENKINS_HOME/workspace/$JOB_NAME/target .
# ADD /var/lib/jenkins/workspace/sample-docker-output/target/my-app-1.0-SNAPSHOT.jar /home/my-app-1.0-SNAPSHOT.jar
# RUN chmod +x /home/my-app-1.0-SNAPSHOT.jar
# WORKDIR /var/lib/jenkins/workspace/sample-docker-output/target

# RUN git clone https://github.com/Gowtham-Muthyala/cicd-pipeline-train-schedule-git
# WORKDIR /cicd-pipeline-train-schedule-git
# RUN npm install
# RUN npm config get ignore-scripts
# RUN npm config set ignore-scripts false
# RUN npm audit fix
# RUN npm start
# RUN node server
# RUN java -jar /home/my-app-1.0-SNAPSHOT.jar

EXPOSE 8080
# CMD /home/my-app-1.0-SNAPSHOT.jar
# CMD java -jar my-app-1.0-SNAPSHOT.jar
RUN pwd
ENTRYPOINT ["java","-jar","my-app-1.0-SNAPSHOT.jar"]
