#!/usr/bin/env bash

if [[ ${BLACKFIRE} ]]; then
    /etc/init.d/blackfire-agent restart
fi
