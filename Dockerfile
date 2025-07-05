# specify a base image
FROM node:alpine


WORKDIR /usr/app

# we need to reflect the changes that occur inside the index.js 
#without rebuilding for each line we edited in the index.js
# split the copying into 2 steps (the only thing i want to copy is the package.json)
#install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

#default command

CMD [ "npm", "start" ]

#docker build -t momenelnkaeeb/simpleweb .
#docker run -p 8080:8080 momenelnakeeb/simpleweb
#8080 on local machine to 8080 inside the container