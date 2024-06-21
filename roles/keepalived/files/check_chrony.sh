#!/bin/bash

systemctl status chronyd.service >/dev/null 2>&1
chronyd_status=$?

# If all checks pass, exit with status 0 (success)
if [ $chronyd_status -eq 0 ]; then
    exit 0
else
    exit 1
fi