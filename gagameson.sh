#!/usr/bin/env bash

#MESON

wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.18/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz && cd ./meson_cdn-linux-amd64 && sudo ./service install meson_cdn

sudo ./meson_cdn config set --token=hykekalwdzitocldjlpcupbf --https_port=443 --cache.size=30

sudo ./service start meson_cdn

cd ..

#GAGANODE

curl -o app-linux-amd64.tar.gz https://assets.coreservice.io/public/package/22/app/1.0.3/app-1_0_3.tar.gz && tar -zxf app-linux-amd64.tar.gz && rm -f app-linux-amd64.tar.gz && cd ./app-linux-amd64 && sudo ./app service install

sudo ./app service start

sleep 3s

./app status

sleep 15s

./app status

sudo ./apps/gaganode/gaganode config set --token=wzzbqbcmpljdpswpxrtgclxd

./app restart

