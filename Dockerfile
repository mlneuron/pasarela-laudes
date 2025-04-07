# Usa una imagen oficial con Apache + PHP
FROM php:8.2-apache

# Habilita mod_rewrite (si lo usas)
RUN a2enmod rewrite

# Copia todos los archivos del proyecto al directorio web
COPY . /var/www/html/

# Da permisos apropiados
RUN chown -R www-data:www-data /var/www/html
