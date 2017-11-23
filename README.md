# Requirements
* Docker
    * https://docs.docker.com/engine/installation/

* Docker-compose
    * https://docs.docker.com/compose/install/

* Add credentials in app.js generated from [***twit***](https://www.npmjs.com/package/twit)
```
    consumer_key: '<your-consumer-key',
    consumer_secret: '<your-consumer-secret',
    access_token: '<your-access-token>',
    access_token_secret: '<your-access-token-secret>'
```

# Setup

### Building image with Docker

```
docker build . --tag node-twitter-stream
```

### Running container from the image

```
docker run -p 3000:3000 -v .($pwd)/:/code --name=node-twitter-stream  node-twitter-stream:latest
```
