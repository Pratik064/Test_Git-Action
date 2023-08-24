# Use the official Nginx base image
FROM nginx:latest

EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
