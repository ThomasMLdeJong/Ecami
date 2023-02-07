#!/bin/bash

# Get the IP address of the Raspberry Pi
ip=$(hostname -I)

# Broadcast the IP address on port 4456
while true; do
  echo "$ip" | nc -w1 -u 255.255.255.255 4456
  sleep 5
done