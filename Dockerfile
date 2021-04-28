FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y git 
# RUN apt-get --purge remove node 
# RUN apt-get --purge remove nodejs-legacy 
# RUN apt-get --purge remove nodejs 
RUN apt-get update 
RUN apt-get install -y npm nodejs libnode64
# RUN npm install 
# RUN npm start 

RUN git clone https://github.com/Gowtham-Muthyala/cicd-pipeline-train-schedule-git
WORKDIR /cicd-pipeline-train-schedule-git
RUN npm install
RUN npm config get ignore-scripts
RUN npm config set ignore-scripts false
RUN npm audit fix
# RUN npm start
# RUN node server

# EXPOSE 8080
CMD [ "npm", "start" ]
# ENTRYPOINT ["npm start"]
