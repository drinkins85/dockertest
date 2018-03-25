FROM node:carbon

WORKDIR .

RUN apt-get update

RUN apt-get install -y git
RUN git clone https://github.com/drinkins85/node-git.git newrepo

COPY package*.json ./

RUN npm install


# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE ${PORT}

CMD [ "npm", "start" ]