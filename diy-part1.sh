#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone https://github.com/kenzok8/luci-theme-ifit.git package/luci-theme-ifit
git clone https://github.com/solidus1983/luci-theme-opentomato.git package/luci-theme-opentomato
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/fw876/helloworld.git package/helloworld
git clone https://github.com/vernesong/OpenClash.git package/OpenClash
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone https://github.com/garypang13/luci-app-bypass.git package/luci-app-bypass
git clone https://github.com/gdck/luci-app-control-weburl.git package/luci-app-control-weburl
git clone https://github.com/garypang13/luci-app-dnsfilter.git package/luci-app-dnsfilter
cd package
git clone https://github.com/garypang13/openwrt-packages/tree/master/lua-maxminddb.git
git clone https://github.com/garypang13/smartdns-le.git
git clone https://github.com/jerrykuku/lua-maxminddb.git  #git lua-maxminddb 依赖
