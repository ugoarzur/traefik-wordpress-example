#!/bin/bash

KEY_FILE="localhost.key"
CERT_FILE="localhost.crt"

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout "$KEY_FILE" -out "$CERT_FILE"
