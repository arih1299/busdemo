# Solace Bus Demo

Runs on https://sg.solace.com/bus

Some modifications from aaron-613's original bus demo

* To Run in Docker *
```
$ docker build . -t solacedemoweb:1.0
$ docker run --name solwebdemo -p 80:80 \
--env SMF_URL=ws://localhost:8008 \
--env VPN=default \
--env SOL_USER=default \
--env SOL_PASS=default \
--env WEB_URL=http://localhost/bus \
--env WEBAPP_URL=http://localhost/busapp \
--env MQTT_TLS=false \
--env MQTT_SERVER=localhost \
--env MQTT_PORT=8080 \
-d solacedemoweb:1.0
```

The WEB_URL, WEBAPP_URL, and MQTT_* variables are used for the "fence" feature and the QR code generation.