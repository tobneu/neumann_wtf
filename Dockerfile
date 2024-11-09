# Use an official Nginx image
FROM nginx:alpine

# Copy HTML and CSS files to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
