FROM centrifugo/centrifugo:v5

COPY config.json /config.json

CMD ["centrifugo", "--config", "/config.json"]