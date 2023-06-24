#!/bin/bash


PASSWORD=$(tr -dc '[:alnum:][:punct:]' < /dev/urandom | head -c 12)

echo "${PASSWORD}"