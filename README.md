Nginx Docker Image
==================

Base Nginx Docker image for serving static content

Assuming your project structure is as follows:

    # project root directory
    root/
    
    # app folder houses application source files to run in development mode
    |-- app/ 
    
    # sites-enabled folder containing basic nginx.conf
    |-- sites-enabled
        default
    
    # dockerfile in project root
    Dockerfile
    
A simple nginx.conf gor this image is as such:

    server {
        listen 80 default_server;
        listen [::]:80 default_server ipv6only=on;
    
        root /app;
        index index.html index.htm;
    
        server_name localhost;
    
        location / {
            try_files $uri $uri/ =404;
        }
    }
    
Build the image from the project root:

    docker build -t someName .
    
And run:

    docker run someName
