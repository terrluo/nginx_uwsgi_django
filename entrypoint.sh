#!/usr/bin/env bash
if [[ "$1" == "dev" ]]; then
    export DJANGO_SETTINGS_MODULE=demo.settings.settings-dev
    make dev
elif [[ "$1" == "prod" ]]; then
    export DJANGO_SETTINGS_MODULE=demo.settings.settings-prod
    make prod
fi

make collectstatic
make migrate
make run
