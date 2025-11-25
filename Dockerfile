FROM node:18-alpine

WORKDIR /app

# Copy only package files first
COPY app/package*.json ./

# Install production dependencies
RUN npm install --production

# Copy the rest of the app code
COPY app/ .

EXPOSE 3000

CMD ["node", "server.js"]
