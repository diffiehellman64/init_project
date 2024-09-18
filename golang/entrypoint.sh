#!/bin/bash
echo "entrypoint!!!"


if [ ! -f '/app/api' ]; then
    echo "Installing modules..."
    cd /app
    go build -o api .
    echo "Modules installed!"
fi

exec "$@"