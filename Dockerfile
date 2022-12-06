FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.qa6k0kc.mongodb.net
ENV MONGODB_USERNAME testmongodb
ENV MONGODB_PASSWORD orPv76CHuUafCn3h

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]