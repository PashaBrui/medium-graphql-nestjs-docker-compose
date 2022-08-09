FROM node:14.15.0

RUN git clone https://github.com/ramzitannous/medium-graphql-nestjs

WORKDIR ./medium-graphql-nestjs
COPY .env  .
#COPY package*.json ./

RUN yarn install
RUN npm install mongoose@5.13.14
RUN npm install @nestjs/graphql@7.11


RUN yarn start

ENV PORT 3000

EXPOSE $PORT
CMD ["npm","start"]
