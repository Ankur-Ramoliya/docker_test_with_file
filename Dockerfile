FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_16.x -o | bash -
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y nodejs
RUN apt-get install -y npm

# WORKDIR /the/workdir/path

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js

RUN npm i

ENTRYPOINT [ "node", "index.js" ]   