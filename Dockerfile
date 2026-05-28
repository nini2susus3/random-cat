FROM node:26-bookworm
WORKDIR /usr/src/random-cat
RUN apt-get update && apt-get install -y \
    vim \
    curl \
    && rm -rf /var/lib/apt/lists/*
COPY package*.json ./
RUN npm install
COPY src ./
COPY tsconfig*.json ./
COPY .vimrc /root/

