FROM node:carbon

WORKDIR /usr/src/app

RUN apt-get update

RUN apt-get install -y git
RUN git clone https://github.com/drinkins85/node-git.git newrepo2

COPY package*.json ./

RUN npm install


# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]