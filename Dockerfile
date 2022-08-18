FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  libwebp && \
  apt-get upgrade && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "index.js"]