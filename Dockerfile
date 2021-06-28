FROM node
WORKDIR /usr/src/app
RUN npm install -g create-react-app
RUN create-react-app social-experience
WORKDIR /usr/src/app/social-experience
COPY package.json package.json
COPY package-lock.json package-lock.json
RUN npm install
COPY public/ public
COPY src/ src
RUN npm run build
RUN npm install -g serve
CMD serve -s build
EXPOSE 5000
