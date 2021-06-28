FROM node:latest

RUN mkdir se-symposium-frontend
WORKDIR se-symposium-frontend
RUN npm install -g create-react-app
RUN create-react-app social-experience

WORKDIR social-experience
COPY . .
RUN npm install

COPY . .
RUN npm run build
RUN npm install -g serve
CMD serve -s build

USER node
EXPOSE 5000
