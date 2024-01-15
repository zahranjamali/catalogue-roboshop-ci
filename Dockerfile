FROM node:14 as build

WORKDIR /opt/server

COPY package.json /opt/server/

RUN npm install

FROM gcr.io/distroless/nodejs:14

WORKDIR /opt/server

ENV INSTANA_AUTO_PROFILE true

EXPOSE 8080

COPY --from=build /opt/server /opt/server

COPY server.js /opt/server/

CMD ["server.js"]

