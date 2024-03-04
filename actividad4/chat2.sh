#!/bin/bash

while true; do
    read message
    echo "Participant 2: $message" > chat2_pipe
    if [[ "$message" == "exit" ]]; then
        break
    fi
done
