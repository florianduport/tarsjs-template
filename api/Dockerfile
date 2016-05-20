FROM node
RUN npm install -g sails
RUN npm install -g nodemon
WORKDIR /data/src

# so that npm installs not into the code path, so we can share this directory and still have npm_modules not shared
RUN mkdir -p /install/ # so that executable from modules are added to the path
ENV PATH /install/node_modules/.bin:$PATH
# so that you can `require` any installed module
ENV NODE_PATH /install/node_modules/

COPY ./src/package.json /install/package.json
RUN cd /install; npm install
