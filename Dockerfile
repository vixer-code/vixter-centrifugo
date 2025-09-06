FROM centrifugo/centrifugo:v6

# Instala envsubst
RUN apk add --no-cache gettext

# Copia template e script
COPY config.json.template /config.json.template
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Define o entrypoint
ENTRYPOINT ["/start.sh"]

# Porta padrão do Centrifugo
EXPOSE 8000
