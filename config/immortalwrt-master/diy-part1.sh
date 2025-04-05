#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/immortalwrt/immortalwrt / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git rtl8821cu https://github.com/morrownr/8821cu-20210916.git' feeds.conf.default
sed -i '$a src-git modemband https://github.com/4IceG/luci-app-modemband' feeds.conf.default
sed -i '$a src-git hypermodem https://github.com/momokind/luci-app-hypermodem' feeds.conf.default

# other
# rm -rf package/emortal/{autosamba,ipv6-helper}

