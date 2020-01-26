FROM node:carbon
RUN mkdir -p /opt/app
ADD . /opt/app
RUN cd /opt/app && npm install
WORKDIR /opt/app
ENTRYPOINT [ "node", "./src/index.js" ]