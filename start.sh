#!/bin/sh
# Gera config.json real a partir do template e das secrets do Fly.io
envsubst < /config.json.template > /config.json

# Roda o Centrifugo com o config gerado
exec centrifugo --config /config.json
