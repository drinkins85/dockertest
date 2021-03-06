FROM node:carbon

WORKDIR /usr/src/app

RUN apt-get update

RUN apt-get install -y git
RUN git clone https://github.com/drinkins85/node-git.git _repo

COPY package*.json ./

RUN npm install

ENV PORT=3000

# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE ${PORT}

CMD [ "npm", "start" ]