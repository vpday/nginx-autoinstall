#!/bin/bash

export HEADLESS=y

if [[ $INSTALL_TYPE == "FULL" ]]; then
    export PAGESPEED=n # Support Retired
    export BROTLI=y
    export HEADERMOD=y
    export GEOIP=n # requires license key
    export FANCYINDEX=y
    export CACHEPURGE=y
    export SUBFILTER=y
    #export LUA=y # Module faulty, should be tested with the most recent release of the module to ensure proper operation.
    export WEBDAV=y
    export VTS=y
    export RTMP=y
    export TESTCOOKIE=y
    export HTTP3=n Not Working Properly With Recent & now unnecessary with mainline http3
    export MODSEC=y
    export HPACK=y
    export REDIS2=y
    export HTTPREDIS=n # Not Working Properly
    export SRCACHE=y
    export SETMISC=y
    export NGXECHO=y
fi

bash -x ../../nginx-autoinstall.sh

