#!/bin/sh

HTTP_PORT="${HTTP_PORT:-8080}"

echo "Listening on ${HTTP_PORT}..."
while true; do
    echo -e 'HTTP/1.1 200\r\n\r\n\r\nOK\n' | nc -l -p "${HTTP_PORT}"
done
