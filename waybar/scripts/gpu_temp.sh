#!/bin/bash

name=$(nvidia-smi --query-gpu=name --format=csv,noheader,nounits | head -n1)
temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits | head -n1)

echo "{\"text\": \"󰘚 ${temp}°C\", \"tooltip\": \"${name} Temperature: ${temp}°C\"}"

