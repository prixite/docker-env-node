FROM node:16

WORKDIR /opt/code/dotenv-react

COPY package.json package.json
RUN npm install
RUN npm run build
