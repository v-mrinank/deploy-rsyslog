#!/bin/bash

systemctl status rsyslog.service >/dev/null 2>&1
rsyslog_status=$?

# If all checks pass, exit with status 0 (success)
if [ $rsyslog_status -eq 0 ]; then
    exit 0
else
    exit 1
fi