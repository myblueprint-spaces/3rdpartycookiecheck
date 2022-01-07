FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
COPY complete.html /usr/share/nginx/html/
COPY start.html /usr/share/nginx/html/

# Customize the Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d

CMD ["nginx", "-g", "daemon off;"]
