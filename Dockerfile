FROM node:slim
MAINTAINER huoguanghua huoguanghua@infomedia.com.cn

RUN npm install -g pm2
COPY package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/
WORKDIR /opt/app
COPY . /opt/app

CMD pm2 start --no-daemon app.js -x -- --dev

# ENTRYPOINT pm2 start --no-daemon app.js -x -- --dev
