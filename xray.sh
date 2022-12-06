#!/bin/sh
if [ ! -f UUID ]; then
  UUID="77c104a2-5bd8-4f22-bfe1-3495b11714db"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

