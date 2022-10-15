#!/bin/sh
if [ ! -f UUID ]; then
  UUID="cae94f1e-15f6-4dd3-9611-250617ae1d1e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

