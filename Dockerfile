FROM node:18

WORKDIR /app

COPY . .

RUN npm install -g laravel-echo-server

RUN npm install

RUN rm -f laravel-echo-server.lock

EXPOSE 6001

CMD ["npx", "laravel-echo-server", "start", "--force"]