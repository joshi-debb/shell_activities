#!/bin/bash

while true; do
    read message
    echo "Participant 1: $message" > chat1_pipe
    if [[ "$message" == "exit" ]]; then
        break
    fi
done
