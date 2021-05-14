FROM node:14.16.1-alpine

WORKDIR /usr/src/app

COPY . .
 
RUN npm install
RUN REACT_APP_BACKEND_URL=http://localhost/api npm run build

RUN npm install -g serve

#CMD ["serve", "-s", "-l","5000","build"]
#EXPOSE 5000
