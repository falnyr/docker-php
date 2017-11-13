#!/usr/bin/env bash

if [[ ${BLACKFIRE} = true ]]; then
    /etc/init.d/blackfire-agent restart
fi
