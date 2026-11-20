# Use Nginx as the base image
FROM nginx:latest

# Copy application HTML into Nginx web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose container port
EXPOSE 80
