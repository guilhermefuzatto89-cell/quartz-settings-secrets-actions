FROM node:22-slim AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npx quartz build

FROM nginx:alpine
COPY --from=builder /app/public /usr/share/nginx/html

# Configuração nginx para URLs sem .html (Quartz)
RUN printf 'server {\n\
    listen 80;\n\
    root /usr/share/nginx/html;\n\
    index index.html;\n\
\n\
    location / {\n\
        try_files $uri $uri/ $uri.html $uri/index.html =404;\n\
    }\n\
\n\
    error_page 404 /404.html;\n\
\n\
    gzip on;\n\
    gzip_types text/plain text/css application/json application/javascript text/xml application/xml image/svg+xml;\n\
}\n' > /etc/nginx/conf.d/default.conf

EXPOSE 80
