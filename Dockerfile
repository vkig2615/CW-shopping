FROM node:18
WORKDIR usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
ENV NODE_OPTIONS=--opensl-legacy-provider
CMD ["node", "start"]
EXPOSE 3000
