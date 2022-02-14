FROM node:14
ARG NAME
WORKDIR /opt/code
COPY code/package.json package.json
RUN npm install
COPY code/src src
COPY code/public public
ENV REACT_APP_NAME=$NAME
RUN npm run build
