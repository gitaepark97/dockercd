FROM node:18

WORKDIR /app/admin

COPY package.json .

RUN npm install -g pm2
RUN npm install --production

COPY . .