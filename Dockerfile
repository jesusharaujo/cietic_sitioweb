# Usa una imagen base de Nginx
FROM nginx:alpine

# Copia tus archivos del proyecto al directorio que Nginx sirve
COPY . /usr/share/nginx/html

# Copia tu configuración personalizada de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expone el puerto 8080
EXPOSE 8080

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]