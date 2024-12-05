#!/bin/sh

mosquitto_passwd -b /mosquitto/config/passwd root 1234

# เริ่มต้น Mosquitto
exec mosquitto -c /mosquitto/config/mosquitto.conf
