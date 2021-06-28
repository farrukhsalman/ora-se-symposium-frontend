FROM node:latest

WORKDIR /usr/src/app
RUN npm install -g create-react-app
RUN create-react-app social-experience

WORKDIR /usr/src/app/social-experience
COPY . .
RUN npm install

COPY . .
RUN npm run build
RUN npm install -g serve
CMD serve -s build

USER node
EXPOSE 5000
