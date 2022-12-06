#!/bin/sh
if [ ! -f UUID ]; then
  UUID="59006750-188c-4a3b-a2e5-9fc0824301ce"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

