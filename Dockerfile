# Base image with Node.js on Alpine
FROM node:22-alpine AS base

# Set working directory inside container
WORKDIR /app

# Enable Corepack to manage pnpm/yarn versions
RUN corepack enable

# Copy only dependency files first for better Docker cache usage
COPY package.json pnpm-lock.yaml ./

# Enable CI mode for consistent installs in containers
ENV CI=true

# Install dependencies without running scripts (safer initial install)
RUN pnpm install --frozen-lockfile --ignore-scripts \
    && pnpm approve-builds --all \
    && pnpm rebuild


# Development stage (hot reload environment)
FROM base AS dev

# Copy full project source code
COPY . .

# Expose Nuxt dev server port
EXPOSE 3000

# Allow external access to dev server
ENV HOST=0.0.0.0

# Define application port
ENV PORT=3000

# Start Nuxt development server with hot reload
CMD ["pnpm", "dev"]


# Build stage (compile Nuxt app)
FROM base AS build

# Copy full source code for build
COPY . .

# Generate production output (.output directory)
RUN pnpm build


# Production stage (lightweight runtime)
FROM node:22-alpine AS prod

# Set working directory
WORKDIR /app

# Set production environment mode
ENV NODE_ENV=production

# Copy Nuxt build output from build stage
COPY --from=build /app/.output ./.output

# Expose production port
EXPOSE 3000

# Start Nuxt production server
CMD ["node", ".output/server/index.mjs"]