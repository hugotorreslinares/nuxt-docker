# Etapa 1: Build
FROM node:20 AS builder

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

# Etapa 2: Producción
FROM node:20 AS runner

WORKDIR /app

# Solo copiamos la carpeta .output que contiene el build final
COPY --from=builder /app/.output ./

ENV NITRO_HOST=0.0.0.0
ENV NITRO_PORT=3000

EXPOSE 3000

CMD ["node", "server/index.mjs"]
