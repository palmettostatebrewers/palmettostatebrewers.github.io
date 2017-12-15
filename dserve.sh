#!/bin/bash -
###############################################################################
# Author: Travis Goldie
# Purpose: Start Jekyll Serve using dev config
###############################################################################
bundle exec jekyll clean 
bundle exec jekyll build
/usr/bin/google-chrome-beta --disable-web-security \
    --incognito \
    --remote-debugging-port=9222 \
    --ignore-certificate-errors \
    --user-data-dir \
    http://localhost:4000 \
    &
bundle exec jekyll serve --verbose --watch --config _config.yml,_config.dev.yml
