#!/bin/bash

mkdir -p /nginx-conf/modules-enabled/
mkdir -p /nginx-conf/sites-enabled/
mkdir -p /nginx-live-hls/record/
mkdir -p /nginx-live-hls/mp4/

/nginx-bin/nginx-rtmp -c /nginx-conf/nginx.conf
