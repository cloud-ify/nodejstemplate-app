#build image from node image
FROM node:18-alpine
#ENV NODE_ENV=production
#create working directory
WORKDIR /app

#copy required package from node image into workdirctory
COPY package*.json /app

#run npm install to install packages/dependencies
RUN npm install

#copy the source code into the workdirectory
COPY . /app

EXPOSE 7001
#run command when image is launching
CMD ["node", "demoapp.js"]

