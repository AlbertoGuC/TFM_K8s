FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY index.html .
COPY styles.css .
EXPOSE 3000
RUN sed -i 's/listen 80;/listen 3000;/' /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]