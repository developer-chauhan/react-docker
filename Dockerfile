# pull official base image
FROM node:15.13-alpine

# set working directory
WORKDIR /react-with-docker

# add `/app/node_modules/.bin` to $PATH
ENV PATH "./node_modules/.bin:$PATH"

# add app
COPY . .

RUN npm run build

# start app
CMD ["npm", "start"]