#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.5/g' package/base-files/files/bin/config_generate
#git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash
./scripts/feeds update -a
./scripts/feeds install -a
