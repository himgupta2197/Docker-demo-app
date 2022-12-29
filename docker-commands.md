# commands

## create docker network
docker network create mongo-network

## start mongodb
docker run -d \
--name mongodb \
-p 27017:27017 \
-e MONGO_INITDB_ROOT_USERNAME=admin \
-e MONGO_INITDB_ROOT_PASSWORD=password \
--net mongo-network \
mongo

## start mongo-express
docker run -d \
--name mongo-express \
-p 8081:8081 \
--name mongo-express \
-e ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
-e ME_CONFIG_MONGODB_ADMINPASSWORD=password \
-e ME_CONFIG_MONGODB_SERVER=mongodb \
--net mongo-network \
mongo-express

## docker volumes path in windows
\\wsl$\docker-desktop-data\data\docker\volumes

## run jenkins in docker with named volume
docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts