# Base
FROM node:20-alpine AS base
WORKDIR /app
COPY package*.json ./

# Development
FROM base AS development
RUN npm install
COPY . .

# Build
FROM base AS build
RUN npm ci
COPY . .
RUN npm run build

# Production
FROM base AS production
COPY --from=build /app/dist ./dist
RUN npm ci --only=production
CMD ["npm", "start"]
