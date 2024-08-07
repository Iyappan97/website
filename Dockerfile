# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Remove the default index.html provided by Nginx
RUN rm /usr/share/nginx/html/index.html

# Copy everything from the current directory to the Nginx HTML directory
COPY . /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
