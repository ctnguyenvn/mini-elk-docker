#!/bin/bash
elastalert-create-index --config /opt/elastalert2/config.yaml
/usr/bin/supervisord -c /etc/supervisor/supervisor.conf
