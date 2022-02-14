FROM node:16
WORKDIR /opt/code
COPY dotenv-react/package.json package.json
RUN npm install
RUN npm run build
