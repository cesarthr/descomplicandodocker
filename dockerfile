# Imagem apache
FROM httpd:latest

# Volume para o diretorio onde ficam as paginas html do apache
VOLUME /usr/local/apache2/htdocs

# Criar um index.html personalizado
COPY index.html /usr/local/apache2/htdocs

# Expor a porta 80
EXPOSE 80

# Criar um variavel de ambiente: app=Webserver
ENV app=Webserver

# Criar um label: version=1.0.0
LABEL version=1.0.0

# Criar um arquivo de configuracao fake
COPY giropops /opt/webserver/
