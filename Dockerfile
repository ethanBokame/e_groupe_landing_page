# Use the latest Node.js LTS version (Alpine = lightweight image)
FROM node:22-alpine

# Set the working directory inside the container
WORKDIR /app

# Enable Corepack to manage modern package managers (pnpm/yarn) without manual install
RUN corepack enable

# Copy only dependency files first to leverage Docker cache
COPY package.json pnpm-lock.yaml* ./

ENV CI=true

# Install dependencies without running scripts (safer initial install)
RUN pnpm install --frozen-lockfile --ignore-scripts \
    && pnpm approve-builds --all \
    && pnpm rebuild

# Copy the rest of the application source code into the container
COPY . .

# Expose Nuxt default development port
EXPOSE 3000

# Set host to allow external access to the container
ENV HOST=0.0.0.0

# Set application port
ENV PORT=3000

# Start the Nuxt development server
CMD ["pnpm", "dev"]