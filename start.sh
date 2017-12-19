#!/usr/bin/env sh

: ${TRUSTED_HOSTS:=''}
: ${BANNED_HOSTS:=''}
: ${WS_SECRET:=''}

echo "Trusted hosts: [$TRUSTED_HOSTS]"
echo "Banned hosts: [$BANNED_HOSTS]"
echo "Reserved IDs: [$RESERVED_IDS]"
echo "WS secret: $WS_SECRET"

cd /app

echo "module.exports = {trusted: [$TRUSTED_HOSTS], banned: [$BANNED_HOSTS], reserved: []};" > lib/utils/config.js

WS_SECRET=$WS_SECRET npm start
