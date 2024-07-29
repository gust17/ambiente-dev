# vue/Dockerfile
FROM node:16

# Set working directory
WORKDIR /app/vue

# Copy initialization script from the root directory
COPY ../init.sh /init.sh

# Set permissions
RUN chmod +x /init.sh

# Expose port
EXPOSE 8080

# Start the app
CMD ["/bin/bash", "-c", "cd /app/vue/$VUE_PROJECT_NAME && npm run serve"]
