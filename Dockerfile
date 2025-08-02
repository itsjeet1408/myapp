# Use official Node image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all frontend code
COPY . .

# Expose React dev server port
EXPOSE 3000

# Start development server with hot reload
CMD ["npm", "start"]
