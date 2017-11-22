FROM node:6.10.2

ADD package.json /tmp/

RUN cd /tmp && npm install

RUN npm install -g nodemon

ADD ./ /code/

EXPOSE 3000

WORKDIR /code

ENTRYPOINT [ "nodemon" ]
