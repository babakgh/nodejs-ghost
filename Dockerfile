FROM node:0.12

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN npm install -g grunt-cli
RUN npm install

# Allow fucking bower to use root!!!
RUN echo '{ "allow_root": true  }' > /root/.bowerrc

RUN grunt init
RUN grunt prod

CMD npm start --production

EXPOSE 2368
