# docker-frontend-yarn-dev
 Docker image for frontend javascript development using yarn

This image is for **development environment** for frontend javascript projects using *yarn* instead of *npm*.
Just share your app dir on running the container and voila.

This image is available directly on the official [Docker registry](https://hub.docker.com/r/radwa/frontend-yarn-dev/).

Tools
--------
- NodeJS
- yarn
- Git
- Ruby
- compass  

Usage
-----
This image is meant to be used in a development environment.

I am using it with **webpack**.

`devServer` configuration in `webpack.config.js` file : 
```
devServer: {
    contentBase: './src',
    compress: true,
    port: 9000,
    host: "0.0.0.0"
}
```
`scripts` in `package.json` file 
```
"scripts": {
    "start": "webpack-dev-server"
}
```

How to run it
----
1. `cd` in your app dir 
2. `docker run --rm -it -v $PWD:/home/app -p 9000:9000 radwa/frontend-yarn-dev`
1. **OPTIONAL STPE** (in case you used my webpack configuration) : `yarn install && yarn run start` 