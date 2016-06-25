#!/bin/bash
#Enable slack
curl -X PUT -d 'true' http://$1:8500/v1/kv/consul-alerts/config/notifiers/slack/enabled && \
curl -X PUT -d '' http://$1:8500/v1/kv/consul-alerts/config/notifiers/slack/url  && \
curl -X PUT -d '' http://$1:8500/v1/kv/consul-alerts/config/notifiers/slack/channel && \
curl -X PUT -d 'Alerts' http://$1:8500/v1/kv/consul-alerts/config/notifiers/slack/username && \
curl -X PUT -d 'https://a.slack-edge.com/12b5a/plugins/tester/assets/service_48.png' http://$1:8500/v1/kv/consul-alerts/config/notifiers/slack/icon-url