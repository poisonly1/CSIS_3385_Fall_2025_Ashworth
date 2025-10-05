# Stage 1: Build
FROM node:20-alpine AS builder

WORKDIR /app

# Copy and install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy the rest of the app and build it
COPY . .
RUN yarn build

# Stage 2: Serve with a lightweight web server
FROM node:20-alpine

WORKDIR /app

# Install a simple HTTP server
RUN yarn global add serve

# Copy built files from previous stage
COPY --from=builder /app/dist /app/dist

# Expose the port serve will run on
EXPOSE 5173

# Serve the app
CMD ["serve", "-s", "dist", "-l", "5173"]
