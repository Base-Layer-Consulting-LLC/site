ARG NODE_IMG_TAG=22-alpine
FROM node:${NODE_IMG_TAG}

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

ENV HOST=0.0.0.0 \
    PORT=3000 \
    VITE_HOST=0.0.0.0 \
    CHOKIDAR_USEPOLLING=true \
    CHOKIDAR_INTERVAL=1000 \
    WATCHPACK_POLLING=true

EXPOSE 3000

CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "3000"]
