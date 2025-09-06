FROM centrifugo/centrifugo:v6

# Copia o config.json já com os valores (não precisa de start.sh)
COPY config.json /config.json

# Roda o Centrifugo diretamente em foreground
CMD ["centrifugo", "--config", "/config.json", "--log_level", "info"]

# Porta padrão
EXPOSE 8000
