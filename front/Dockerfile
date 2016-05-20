FROM node

RUN ["apt-get", "update", "-y"]
RUN ["apt-get", "install", "-y", "--no-install-recommends", "software-properties-common"]

RUN ["add-apt-repository", "ppa:nginx/stable"]

RUN ["apt-get", "install", "-y", "nginx"]
RUN ["apt-get", "install", "-y", "nano"]

RUN ["npm", "install", "-g", "grunt-cli"]

WORKDIR /data/src
RUN mkdir toto


# so that npm installs not into the code path, so we can share this directory and still have npm_modules not shared
RUN mkdir -p /install/ # so that executable from modules are added to the path
ENV PATH /install/node_modules/.bin:$PATH
# so that you can `require` any installed module
ENV NODE_PATH /install/node_modules/

COPY ./src/package.json /install/package.json
RUN cd /install; npm install
RUN ln -s /install/node_modules /data/src


RUN npm install -g bower
