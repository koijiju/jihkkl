#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d07d36a3-b10a-4a03-96d2-c34adee56228"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

