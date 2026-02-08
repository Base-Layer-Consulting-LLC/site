ARG NODE_IMG_TAG=${NODE_IMG_TAG:-20-alpine}
ARG CADDY_IMG_TAG=${CADDY_IMG_TAG:-2-alpine}

FROM node:${NODE_IMG_TAG} AS build-stage

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci --ignore-scripts --prefer-offline

COPY . .

RUN npm run build

FROM caddy:${CADDY_IMG_TAG} AS prod-stage

COPY --from=build-stage /app/build /usr/share/caddy

EXPOSE 80
EXPOSE 443

CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
