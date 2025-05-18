

#Using Alpine Linux as the base image 

FROM alpine:latest



#Install Nginx

RUN apk add --no-cache nginx



#Copy custom Nginx config

COPY nginx.conf /etc/nginx/nginx.conf



#Copy HTML page

COPY index.html /usr/share/nginx/html/index.html



#Expose HTTP port 80

EXPOSE 80



#Command to run Nginx in the foreground

CMD ["nginx", "-g", "daemon off;"]




