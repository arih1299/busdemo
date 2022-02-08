#!/bin/bash
echo "solconfig =  {
    web_url: '${WEB_URL}',
    webapp_url: '${WEBAPP_URL}',
    smf_url: '${SMF_URL}',
    vpn: '${VPN}',
    user: '${SOL_USER}',
    pass: '${SOL_PASS}',
    host: '${MQTT_SERVER}',
    mqtt_tls: ${MQTT_TLS},
    mqtt_port: '${MQTT_PORT}'
}" >> config.js
cat config.js
nginx -g "daemon off;"