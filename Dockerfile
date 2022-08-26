FROM node:12.13-alpine

WORKDIR /api

RUN curl -o- -L https://yarnpkg.com/install.sh | \  bash -s -- --version 1.17.3

RUN yarn global add nodemon

COPY package.json .

RUN yarn

ADD . /api

EXPOSE 9000

CMD yarn start
