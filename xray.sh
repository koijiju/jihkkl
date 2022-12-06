#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e517cf93-765f-4897-97a8-5e713e17eb71"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

