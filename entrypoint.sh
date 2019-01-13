#!/bin/sh
sh goreplay.sh
exec /usr/local/openresty/bin/openresty -g "daemon off;"
