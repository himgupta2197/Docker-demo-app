FROM node:13-alpine

# ENV 
#     NODE_ENV=production \
#     PORT=5000 \
#     MONGO_HOST=mongodb \
#     MONGO_PORT=27017 \
#     MONGO_USER=admin \
#     MONGO_PASSWORD=password

RUN mkdir -p /home/app

WORKDIR /home/app

COPY package.json .

RUN npm install

COPY ./app .

EXPOSE 5000

CMD ["node", "server.js"]

