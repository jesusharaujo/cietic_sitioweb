# Usar una imagen base de nginx
FROM nginx:alpine

# Copiar el archivo de configuración de nginx
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Copiar los archivos estáticos al contenedor
COPY . /usr/share/nginx/html

# Exponer los puertos HTTP y HTTPS
EXPOSE 80 443

# Ejecutar nginx en el contenedor
CMD ["nginx", "-g", "daemon off;"]