FROM node:6.9.1

RUN mkdir /code

ADD ./package.json /tmp/package.json

RUN cd /tmp && npm install

ADD ./ /code/

RUN cp -r /tmp/node_modules /code

WORKDIR /code

EXPOSE 3000

# CMD ["nodemon;"]