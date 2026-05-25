# =========================
# Stage 1: Build 11ty
# =========================
FROM node:20-alpine AS builder

WORKDIR /app

# Instala dependencias
COPY package*.json ./
RUN npm ci

# Copia el proyecto
COPY . .

# Build de 11ty
RUN npm run build

# =========================
# Stage 2: Static website
# =========================
FROM lipanski/docker-static-website:latest

# Copia el output generado por 11ty
COPY --from=builder /app/_site /home/static

EXPOSE 3000
