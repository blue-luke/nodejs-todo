FROM node:16.13.0
ENV NODE_ENV=production
WORKDIR /nodejs-todo
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .
CMD ["node", "index.js"]
