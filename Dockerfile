FROM ubuntu
FROM java

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
# RUN apt-get install -y git 
# RUN apt-get --purge remove node 
# RUN apt-get --purge remove nodejs-legacy 
# RUN apt-get --purge remove nodejs 
# RUN apt-get update 
# RUN apt-get install -y npm nodejs libnode64
RUN apt-get install -y default-jdk
# RUN npm install 
# RUN npm start 
COPY /var/lib/jenkins/workspace/sample-docker-output/target/my-app-1.0-SNAPSHOT.jar /home/my-app-1.0-SNAPSHOT.jar
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
CMD [ "java","-jar","/home/my-app-1.0-SNAPSHOT.jar" ]
# CMD java -jar my-app-1.0-SNAPSHOT.jar
# ENTRYPOINT ["java","-jar","./my-app-1.0-SNAPSHOT.jar"]
