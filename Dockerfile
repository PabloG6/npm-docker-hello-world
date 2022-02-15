FROM node:14-alpine as build
WORKDIR /
COPY . .
RUN npm install

RUN npm run build
CMD ["node" "dist/main"]
