FROM node:12

WORKDIR /usr/src

ADD https://github.com/neo4j/neo4j-browser.git .
RUN yarn && \
      yarn build &&\
      cp -R dist /public

EXPOSE 8080
CMD yarn start
