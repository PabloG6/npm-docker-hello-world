FROM node:14-alpine as build
WORKDIR /
COPY . .
RUN npm install

RUN npm run build

EXPOSE 3000
CMD ["node", "dist/main"]
