# MOAS docker build
FROM drupal:8.9-apache

MAINTAINER Graf Iohann der Vuhs

# Add some necessary utilities
RUN \
  apt-get -y install \
    vim
    git

COPY ./etc/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the default working directory
VOLUME ["/var/www/html"]
WORKDIR /var/www/html/

# Override any previous entrypoint
CMD ["/entrypoint.sh"]
