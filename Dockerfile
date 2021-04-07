FROM node:14

WORKDIR /app

COPY package.json yarn.lock /app/

RUN yarn install

COPY . .

EXPOSE 4444

CMD PORT=4444 yarn start
