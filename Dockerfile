FROM centrifugo/centrifugo:v6

COPY config.json /config.json

CMD ["centrifugo", "--config", "/config.json"]