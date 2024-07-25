#!/bin/bash

if [ -z "$1" ]; then
    echo "Пожалуйста, укажите название города."
else
    python3 путь_к_скрипту/get_weather.py "$1"
fi
