# Použij oficiální nginx image
FROM nginx:alpine

# Nastav kódování na UTF-8
ENV LANG=C.UTF-8

# Zkopíruj vlastní index.html do nginx
COPY index.html /usr/share/nginx/html/index.html

# Exponuj port 80
EXPOSE 80
