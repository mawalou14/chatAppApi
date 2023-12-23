# Specify the node version and Image
# Name Image development (can be anything)
FROM node:14 AS development

# Specify working directory inside container
WORKDIR /mawalou14/src/app