#!/bin/sh
if [ ! -f UUID ]; then
  UUID="87b6ce2d-bd79-49fb-b301-a13ce8aee155"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

