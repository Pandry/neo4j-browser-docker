FROM node:12


RUN git clone https://github.com/neo4j/neo4j-browser.git /usr/src/neo4j-browser
WORKDIR /usr/src/neo4j-browser
RUN yarn && \
      yarn build && \
      cp -R dist /public
EXPOSE 8080
CMD yarn start
