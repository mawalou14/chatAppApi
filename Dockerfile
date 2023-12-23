# Specify the node version and Image
# Name Image development (can be anything)
FROM node:14 AS development

# Specify working directory inside container
WORKDIR /mawalou14/src/app

# Copy package-lock json & package.json from
# host to container working dir
COPY package*.json ./

# Install all deps inside the container
RUN npm install

# Bundle APP Sources
COPY . .


EXPOSE 3000


#################
## PRODUCTION ###
#################
FROM node:14 As production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

# Set working dir
WORKDIR /mawalou14/src/app

COPY --from=development /mawalou14/src/app .

EXPOSE 8000
